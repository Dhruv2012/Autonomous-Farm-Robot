import cv2
import time
from utils import *
from imutils.video import WebcamVideoStream
from imutils.video import FPS
from imutils import resize
from keras.utils import to_categorical
#converts BGR frame to 10 channel input 
def load_input(frame,h,w):
    frame_rgb = frame[:,:,[2, 1, 0]]
    #cv2.imshow('Input RGB:', frame_rgb[:,:,[2,1,0]])   #RED => CHANNEL 0 => RGB
    # frame converted into RGB format
    img = img_to_array(frame_rgb)
    img = np.concatenate((img, np.zeros((h,w,7))), axis=2)
    img = np.float16(img)
    hsv = cv2.cvtColor(img_to_array(frame_rgb), cv2.COLOR_RGB2HSV)
    img[:,:,6] = (img[:,:,1] - img[:,:,0])/(img[:,:,1] + img[:,:,0])
    img[:,:,5] = (0.881*img[:,:,1] - 0.441*img[:,:,0] - 0.385*img[:,:,2] - 18.78745)/255
    img[:,:,4] = (1.4*img[:,:,0] - img[:,:,1])/255
    img[:,:,3] = (2*img[:,:,1] - img[:,:,0] - img[:,:,2])/255
    img[:,:,7] = hsv[:,:,0]/360
    img[:,:,8] = hsv[:,:,1]
    img[:,:,9] = hsv[:,:,2]/255
    img[:,:,0] = img[:,:,0]/255
    img[:,:,1] = img[:,:,1]/255
    img[:,:,2] = img[:,:,2]/255
    return img



def realtime():
    cap = WebcamVideoStream(src=0).start()                # for fast fps read
    fps = FPS().start()
    #cap = cv2.VideoCapture(0)                            # for cv2 read
    # Check if camera opened successfully
    h = 512
    w = 384
    seg_model = load_bonnet(3,h,w)
    seg_model.load_weights("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/trained_models/bonnet/bonirob/v3/v3.h5")    
    while(True):
        start = time.time()
        #ret,frame = cap.read()                           # for cv2 read
        frame = cap.read()                                # for fast fps read webcamvideostream
        #print(frame.shape)                                # frame is of: BGR type
        frame = cv2.resize(frame, (w,h), interpolation = cv2.INTER_AREA) 
        print(frame.shape)
        IP = []
        ip = load_input(frame,h,w)
        IP.append(ip)
        IP = np.array(IP)
        pred = seg_model.predict(IP )
        prediction = pred.argmax(axis=-1)
        prediction = to_categorical(prediction,3)
        prediction = np.reshape(prediction,(h,w,3))
        prediction = prediction[:,:,[2, 1, 0]]
        cv2.imshow('Output', prediction)                  # 2=> R 0=> B  frame => BGR
        end = time.time()
        fps.update()
        print("FrameRate:" + str(1/(end - start)))
        c = cv2.waitKey(1)
        if c == 27:
            break
    fps.stop()
    print("FrameRate:" + str(fps.fps()))
    cap.stop()                                             # for fast fps read
    #cap.release()                                         # for cv2 read
    cv2.destroyAllWindows()

realtime()