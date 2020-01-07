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

retrain = True


def dice_coef(y_true, y_pred):
    y_true = K.flatten(y_true)
    y_pred = K.flatten(y_pred)
    intersection = K.sum(y_true * y_pred)
    return (2.0 * intersection + 1) / (K.sum(y_true) + K.sum(y_pred) + 1)

def dice_coef_loss(y_true, y_pred):
    return 1 - dice_coef(y_true, y_pred)
###############################################3
path_x = "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/images"
path_y = "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/annotations"

if(retrain == False):
    if (path_y == "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/annotations"):
        model = small_Unet(3,128,128,out_activation=None)
        l = layers.Reshape((128*128,3))(model.output)
        output = layers.Activation("softmax")(l)
        unet_model = Model(inputs = model.input, outputs = output)
        unet_model.compile(loss = "categorical_crossentropy",optimizer = "Adam",  metrics=['accuracy']) 
    elif(path_y == "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/masks"):
        unet_model = small_Unet(1,128,128,"sigmoid")
        unet_model.compile(loss = dice_coef_loss,optimizer = "Adam", metrics=['accuracy'])
else:
    print("reloading previous weights............")
    if (path_y == "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/annotations"):
        unet_model = load_model("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/cropvsweedv1.h5")
        print("crop vs weeds model loaded...")
    elif(path_y == "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/masks"):
        unet_model = load_model("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/v1.h5")
        print("vegetation seg model loaded(version 1).....")

unet_model.summary()
###############################################

x_train = []
y_train = []
x_test  = []
y_test  = []



def load_cwfid_withyaml(path_x,path_y,path_yaml):
    x_train = []
    y_train = []
    x_test  = []
    y_test  = []
    if(path_y == "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/masks"):
        multiclass =  False
    elif(path_y == "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/annotations"):
        multiclass = True
    with open(path_yaml,"r") as f:
        data = yaml.load(f)   
    for i in data["train"]:
        i = "{0:03d}".format(i)
        x_path = os.path.join(path_x,str.format(i)) + "_image.png" 
        '''
        img = load_img(x_path,target_size=(128,128))
        img = img_to_array(img)/255
        '''
        img = multichannel_input(x_path,128,128)
        x_train.append(img)
        if(multiclass):
            y_path = os.path.join(path_y,str(i)) + "_annotation.png" 
            img = load_img(y_path,target_size=(128,128))
            img = img_to_array(img,dtype="uint8")/255.
            weed = img[:,:,0]
            crop = img[:,:,1]
            temp = np.zeros((128,128,3))
            temp[:,:, 0] = weed
            temp[:, :, 1] = crop
            back = img.copy()
            back = np.all(img == [0, 0, 0],axis=-1)*1
            temp[:,:, 2] = back
            img = np.reshape(temp,(128*128,3))
        else:    
            y_path = os.path.join(path_y,str(i)) + "_mask.png" 
            img = load_img(y_path,target_size=(128,128),color_mode="grayscale")
            img = img_to_array(img,dtype="uint8")/255.
            img = invert(img)
            
            
        y_train.append(img)
        
    for i in data["test"]:
        i = "{0:03d}".format(i)
        x_path = os.path.join(path_x,str.format(i)) + "_image.png" 
        '''
        img = load_img(x_path,target_size=(128,128))
        img = img_to_array(img)/255
        '''
        img = multichannel_input(x_path,128,128)
        x_test.append(img)
        if(multiclass):
            y_path = os.path.join(path_y,str(i)) + "_annotation.png" 
            img = load_img(y_path,target_size=(128,128))
            img = img_to_array(img,dtype="uint8")/255.
            weed = img[:,:,0]
            crop = img[:,:,1]
            temp = np.zeros((128,128,3))
            temp[:,:, 0] = weed
            temp[:, :, 1] = crop
            back = img.copy()
            back = np.all(img == [0, 0, 0],axis=-1)*1
            temp[:,:, 2] = back
            img = np.reshape(temp,(128*128,3))
        else:    
            y_path = os.path.join(path_y,str(i)) + "_mask.png" 
            img = load_img(y_path,target_size=(128,128),color_mode="grayscale")
            img = img_to_array(img,dtype="uint8")/255.
            img = invert(img)
            
            
        y_test.append(img)
    x_train = np.array(x_train)
    y_train = np.array(y_train)
    x_test = np.array(x_test)
    y_test = np.array(y_test)
    return x_train,y_train,x_test,y_test

x_train,y_train,x_test,y_test = load_cwfid_withyaml(path_x,path_y,"/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/train_test_split.yaml")

'''
print("x is:")
x = np.array(x)
print(x.shape)
y = np.array(y)
print("y is:")
print(y.shape)
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.2, random_state = 0)
'''
'''
x_train = np.array(x_train)
y_train = np.array(y_train)
x_test = np.array(x_test)
y_test = np.array(y_test)
'''



print("heyy")
print(x_train.shape)
print(x_test.shape)
print(y_train.shape)
print(y_test.shape)

history = unet_model.fit(x_train, y_train, batch_size=4, epochs= 20,verbose=1,validation_data = (x_test,y_test),shuffle = True)
unet_model.save("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/cropvsweedv1.h5")
plot_model(unet_model, to_file='/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/unet_model_plot.png', show_shapes=True, show_layer_names=True)

print("checking...")

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
plt.imshow(x_test[2])
plt.subplot(1,3,2)
plt.title("correct label")
plt.imshow(y_test[2,:,:,0])


prediction = unet_model.predict(x_test[2:3])
#prediction shape will be (1,128,128,1)
plt.subplot(1,3,3)
plt.title("prediction")
plt.imshow(prediction[0,:,:,0])
print("hey")
plt.show()
'''
plt.figure(figsize=(10,3))
plt.subplot(1,3,1)
plt.title("input")
plt.imshow(x_train[2])
plt.subplot(1,3,2)
plt.title("correct label")
plt.imshow(np.reshape(y_train[2,:],(128,128,3)))


prediction = unet_model.predict(x_train[2:3])
#prediction shape will be (1,128,128,1)
plt.subplot(1,3,3)
plt.title("prediction")
plt.imshow(np.reshape(prediction,(128,128,3)))
print("hey")
plt.show()



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
    #img = img_to_array(img)/255
    