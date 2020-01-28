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

def dice_coef(y_true, y_pred):
    y_true = K.flatten(y_true)
    y_pred = K.flatten(y_pred)
    intersection = K.sum(y_true * y_pred)
    return (2.0 * intersection + 1) / (K.sum(y_true) + K.sum(y_pred) + 1)

def dice_coef_loss(y_true, y_pred):
    return 1 - dice_coef(y_true, y_pred)

def load_unet(labels,h,w):
    model = small_Unet(labels,h,w,out_activation=None)
    l = layers.Reshape((h*w,labels))(model.output)
    output = layers.Activation("softmax")(l)
    unet_model = Model(inputs = model.input, outputs = output)
    unet_model.compile(loss = "categorical_crossentropy",optimizer = "Adam",  metrics=['accuracy'])
    unet_model.summary()
    return unet_model

def load_bonnet(labels,h,w):
    model = bonnet(labels,h,w)
    model.compile(loss = "categorical_crossentropy",optimizer = "Adam",  metrics=['accuracy'])
    model.summary()
    return model

def multichannel_input(input_path,h,w):
    image = load_img(input_path,target_size=(h,w))
    img = img_to_array(image)
    img = np.concatenate((img, np.zeros((h,w,7))), axis=2)
    img = np.float16(img)
    hsv = cv2.cvtColor(img_to_array(image), cv2.COLOR_RGB2HSV)
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

def load_cwfid_withyaml(path_x,path_y,path_yaml,h, w):
    x_train = []
    y_train = []
    x_test  = []
    y_test  = []
    
    with open(path_yaml,"r") as f:
        data = yaml.load(f)   
    for i in data["train"]:
        i = "{0:03d}".format(i)
        x_path = os.path.join(path_x,str.format(i)) + "_image.png" 
        img = multichannel_input(x_path,h,w)
        x_train.append(img)
        y_path = os.path.join(path_y,str(i)) + "_annotation.png" 
        img = load_img(y_path,target_size=(h,w))
        img = img_to_array(img,dtype="uint8")/255.
        weed = img[:,:,0]
        crop = img[:,:,1]
        temp = np.zeros((h,w,3))
        temp[:,:, 0] = weed
        temp[:, :, 1] = crop
        back = img.copy()
        back = np.all(img == [0, 0, 0],axis=-1)*1
        temp[:,:, 2] = back
        img = np.reshape(temp,(h*w,3))    
        y_train.append(img)
        
    for i in data["test"]:
        i = "{0:03d}".format(i)
        x_path = os.path.join(path_x,str.format(i)) + "_image.png" 
        img = multichannel_input(x_path,h,w)
        x_test.append(img)
        y_path = os.path.join(path_y,str(i)) + "_annotation.png" 
        img = load_img(y_path,target_size=(h,w))
        img = img_to_array(img,dtype="uint8")/255.
        weed = img[:,:,0]
        crop = img[:,:,1]
        temp = np.zeros((h,w,3))
        temp[:,:, 0] = weed
        temp[:, :, 1] = crop
        back = img.copy()
        back = np.all(img == [0, 0, 0],axis=-1)*1
        temp[:,:, 2] = back
        img = np.reshape(temp,(h*w,3))        
        y_test.append(img)

    x_train = np.array(x_train)
    y_train = np.array(y_train)
    x_test = np.array(x_test)
    y_test = np.array(y_test)
    return x_train,y_train,x_test,y_test

def print_shapes(x_train,y_train,x_test,y_test):
    print(x_train.shape)
    print(y_train.shape)
    print(x_test.shape)
    print(y_test.shape)

def plot_history(history):
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
