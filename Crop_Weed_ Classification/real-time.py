import cv2
import time
from utils import *
from imutils.video import WebcamVideoStream
from imutils.video import FPS

#converts BGR frame to 14 channel 
def load_input(frame):
    temp = frame[:,:,0]
    frame[:,:,0] = frame[:,:,2]
    frame[:,:,2] = temp
    return frame

def realtime():
    cap = WebcamVideoStream(src=0).start()                # for fast fps read
    #cap = cv2.VideoCapture(0)                            # for cv2 read
    # Check if camera opened successfully
    #if not cap.isOpened():                               # for cv2 read
    #    print("Unable to read camera feed")              # for cv2 read
    h = 512
    w = 384
    seg_model = load_bonnet(3,h,w)
    seg_model.load_weights("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/trained_models/bonnet/bonirob/v3/v3.h5")    
    while(True):
        start = time.time()

        #ret,frame = cap.read()                           # for cv2 read
        frame = cap.read()                                # for fast fps read webcamvideostream
        print(frame.shape)
        #frame = load_input(frame)
        #print(frame.shape)                                # frame is of: BGR type
        '''
        blue = frame[:,:,0]
        red = frame[:,:,2]
        frame[:,:,0] = red
        frame[:,:,2] = blue
        '''
        frame_rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        cv2.imshow('Input', frame_rgb)
        #img = multichannel_input(frame,h,w)
        #pred = seg_model.predict(img)
        end = time.time()
        print("FrameRate:" + str(1/(end - start)))
        c = cv2.waitKey(1)
        if c == 27:
            break

    cap.stop()                                             # for fast fps read
    #cap.release()                                         # for cv2 read
    cv2.destroyAllWindows()

realtime()