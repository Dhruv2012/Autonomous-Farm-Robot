#SIGMOID/SOFTMAX
#LOSS
#3RD DIMENISON

import os,glob
import numpy as np
import matplotlib.pyplot as plt
from model import *
import keras
import keras.backend as K
from keras import layers, activations
from keras.models import load_model
import PIL
from keras.preprocessing.image import load_img,img_to_array
from keras.utils import plot_model
from keras.engine.topology import Layer
import tensorflow as tf
from sklearn.model_selection import train_test_split
from skimage.util import invert
import cv2
from utils import *

retrain = True
training_model = {"unet": 0, "bonnet": 1}
MODEL = training_model["bonnet"]
###############################################3
path_x = "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/images"
path_y = "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/annotations"
h = 128
w = 128
x_train = []
y_train = []
x_test  = []
y_test  = []



###############################################
if(MODEL == training_model["unet"]):
    h = 128
    w = 128
    if(retrain == False):
        print("initializing training procedure.......")
        seg_model = load_unet(3,h,w)
    else:
        print("reloading previous weights............")
        seg_model = load_unet(3,h,w)
        seg_model.load_weights("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/cropvsweedv1.h5")
        seg_model.compile(loss = "categorical_crossentropy",optimizer = "Adam",  metrics=['accuracy'])
        print("crop vs weeds model loaded...")
    x_train,y_train,x_test,y_test = load_cwfid_withyaml(path_x,path_y,"/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/train_test_split.yaml",h,w)

elif(MODEL == training_model["bonnet"]):
    h = 512
    w = 384
    if(retrain == False):
        print("initializing training procedure.......")
        seg_model = load_bonnet(3,h,w)
    else:
        print("reloading previous weights............")
        seg_model = load_bonnet(3,h,w)
        seg_model.load_weights("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/trained_models/bonnetv1.h5")
        seg_model.compile(loss = "categorical_crossentropy",optimizer = "Adam",  metrics=['accuracy'])
        print("crop vs weeds model loaded...")
    x_train,y_train,x_test,y_test = load_cwfid_withyaml(path_x,path_y,"/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/train_test_split.yaml",h,w)


print_shapes(x_train,y_train,x_test,y_test)
history = seg_model.fit(x_train, y_train, batch_size=4, epochs= 250,verbose=1,validation_data = (x_test,y_test),shuffle = True)
seg_model.save_weights("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/trained_models/bonnetv1.h5")
plot_model(seg_model, to_file='/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/unet_model_plot.png', show_shapes=True, show_layer_names=True)

print("checking...")
plot_history(history)

plt.figure(figsize=(10,3))
plt.subplot(1,2,1)
plt.plot(history.history['loss'])
plt.plot(history.history['val_loss'])
plt.title('Model loss')
plt.ylabel('Loss')
plt.xlabel('Epoch')
plt.legend(['Train', 'Test'], loc='upper left')

plt.subplot(1,2,2)
plt.plot(history.history['acc'])
plt.plot(history.history['val_acc'])
plt.title('Model accuracy')
plt.ylabel('Accuracy')
plt.xlabel('Epoch')
plt.legend(['Train', 'Test'], loc='upper left')
'''

plt.figure(figsize=(10,3))
plt.subplot(1,3,1)
plt.title("input")
plt.imshow(x_train[2])
plt.subplot(1,3,2)
plt.title("correct label")
plt.imshow(np.reshape(y_train[2,:],(128,128,3)))


prediction = seg_model.predict(x_train[2:3])
#prediction shape will be (1,128,128,1)
plt.subplot(1,3,3)
plt.title("prediction")
plt.imshow(np.reshape(prediction,(128,128,3)))
print("hey")
plt.show()
'''




    #img = img_to_array(img)/255
    