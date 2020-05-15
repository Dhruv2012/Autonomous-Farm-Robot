import cv2
import time
from utils import *
from imutils.video import WebcamVideoStream, FileVideoStream
from imutils.video import FPS
from imutils import resize
from keras.utils import to_categorical
import argparse
INPUT_VIDEO_PATH = '/home/dhruv/Final_Year_Project/Datasets/vokoscreen-2020-05-15_20-24-54.mkv'     # Input video path if not doing real-time

ap = argparse.ArgumentParser()
ap.add_argument("-v", "--video", required=False,help = "Specify the input video path. If not specified it will run real-time from webcam/camera input")
ap.add_argument("-m", "--modelweights", default = "/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/trained_models/bonnet/bonirob/v3/v3.h5", help = "Specifies the model weights path")
args = ap.parse_args()
 
if args.video == None:      
    print("Hey")                    ## No path specified. Hence INput stream comes from webcam/camera(real-time)
    src = 0                         ## Specify the camera port from which the video streams. It is same as argument to cv2.VideoCapture(src)
else:
    src = args.video                # Input stream from Video @path specified at command-line args
    print(src)

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


def realtime(src,modelweightspath):
    
    if(type(src) == str):
        cap = FileVideoStream(src).start()
    elif(type(src) == int):
        cap = WebcamVideoStream(src).start()                 # for fast fps read for real-time
    
    fps = FPS().start()
    #cap = cv2.VideoCapture(0)                               # for cv2 read
    h = 512
    w = 384
    seg_model = load_bonnet(3,h,w)
    seg_model.load_weights(modelweightspath)    
    check = True

    while check:                                            
        start = time.time()
        #ret,frame = cap.read()                             # for cv2 read
        frame = cap.read()                                  # for fast fps read webcamvideostream
        #print(frame.shape)                                 # frame is of: BGR type
        frame = cv2.resize(frame, (w,h), interpolation = cv2.INTER_AREA) 
        cv2.imshow('Input',frame)
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
        cv2.imshow('Output', prediction)                    # 2=> R 0=> B  frame => BGR
        end = time.time()
        fps.update()
        print("FrameRate:" + str(1/(end - start)))
        c = cv2.waitKey(1)
        if c == 27:
            break
        if(type(src) == str):                               # Check if next frame exists in case of video file
            check = cap.more()
    fps.stop()
    print("AVg FrameRate:" + str(fps.fps()))
    cap.stop()                                              # for fast fps read
    #cap.release()                                          # for cv2 read
    cv2.destroyAllWindows()
realtime(src,args.modelweights)