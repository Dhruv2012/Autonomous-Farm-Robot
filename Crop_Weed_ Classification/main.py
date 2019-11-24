import os,glob
import numpy as np
import matplotlib.pyplot as plt
from model import *
import keras
import keras.backend as K
from keras import layers, activations
#from keras.models import 
import PIL
from keras.preprocessing.image import load_img,img_to_array
from keras.utils.vis_utils import plot_model
from keras.engine.topology import Layer
import tensorflow as tf
from sklearn.model_selection import train_test_split


unet_model = small_Unet(3,128,128,"softmax")  
unet_model.summary()
unet_model.compile(loss = "categorical_crossentropy",optimizer = "Adam")
'''
def load_dataset(path_x,path_y):
    os.chdir(path_x)
    x = []
    y = []
    for file_path in glob.glob("*.png"):
        print(file_path)
        img = load_img(str(file_path),target_size=(128,128))
        img = img_to_array(img)/255
        x.append(img)
    os.chdir(path_y)
    for file_path in glob.glob("*.png"):
        print(file_path)
        img = load_img(str(file_path),target_size=(128,128))
        img = img_to_array(img)/255
        y.append(img)
    return x,y
'''

def load_dataset(path_x,path_y):
    x = []
    y = []
    for i in os.listdir(path_x):
        if(os.path.isdir(os.path.join(path_x,i))):
            os.chdir(os.path.join(path_x,i))
            for file_path in glob.glob("*.png"):
                img = load_img(str(file_path),target_size=(128,128))
                img = img_to_array(img)/255
                x.append(img)
        else:
            if(os.path.splitext(i)[1] == '.png'):
                print(os.path.join(path_x,i))
                img = load_img(os.path.join(path_x,i),target_size=(128,128))
                img = img_to_array(img)/255
                x.append(img)
        os.chdir(path_x)
    for i in os.listdir(path_y):
        if(os.path.isdir(os.path.join(path_y,i))):
            os.chdir(os.path.join(path_y,i))
            for file_path in glob.glob("*.png"):
                img = load_img(str(file_path),target_size=(128,128))
                img = img_to_array(img)/255
                y.append(img)
        else:
            if(os.path.splitext(i)[1] == '.png'):
                print(os.path.join(path_y,i))
                img = load_img(os.path.join(path_y,i),target_size=(128,128))
                img = img_to_array(img)/255
                y.append(img)
        os.chdir(path_y)
    return x,y
x,y = load_dataset('/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/images','/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/annotations')
print("x is:")
#print(x)
x = np.array(x)
print(x.shape)
y = np.array(y)
print("y is:")
#print(y)
print(y.shape)


x_train = []
y_train = []
x_test  = []
y_test  = []

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.2, random_state = 0)


print(x_train.shape)
print(x_test.shape)
print(y_train.shape)
print(y_test.shape)

history = unet_model.fit(x_train, y_train, batch_size=10, epochs=1,verbose=1,validation_split = 0.1,shuffle = True)
unet_model.save("/home/dhruv/Final_Year_Project/Crop_Weed_Classification/trained.h5")
unet_model.save_weights("trained_weights.h5")
