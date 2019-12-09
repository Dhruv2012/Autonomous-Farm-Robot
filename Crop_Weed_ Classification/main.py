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


def dice_coef(y_true, y_pred):
    y_true = K.flatten(y_true)
    y_pred = K.flatten(y_pred)
    intersection = K.sum(y_true * y_pred)
    return (2.0 * intersection + 1) / (K.sum(y_true) + K.sum(y_pred) + 1)

def dice_coef_loss(y_true, y_pred):
    return 1 - dice_coef(y_true, y_pred)
###############################################3
unet_model = small_Unet(1,128,128,"softmax")  
unet_model.summary()
###############################################
unet_model.compile(loss = dice_coef_loss,optimizer = "Adam")


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
                temp = int(i[1:3])
                print(temp)
                #x.append(img)
                x.insert(temp - 1,img)
        os.chdir(path_x)

    for i in os.listdir(path_y):
        if(os.path.isdir(os.path.join(path_y,i))):
            os.chdir(os.path.join(path_y,i))
            for file_path in glob.glob("*.png"):
                ############################################################################
                img = load_img(str(file_path),target_size=(128,128),color_mode="grayscale")
                img = img_to_array(img)/255
                y.append(img)
        else:
            if(os.path.splitext(i)[1] == '.png'):
                print(os.path.join(path_y,i))
                ############################################################################
                img = load_img(os.path.join(path_y,i),target_size=(128,128),color_mode="grayscale")
                img = img_to_array(img)/255
                temp = int(i[1:3])
                print(temp)
                y.insert(temp - 1,img)
                #y.append(img)
        os.chdir(path_y)
    return x,y

x,y = load_dataset('/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/images','/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/masks')


x_train = []
y_train = []
x_test  = []
y_test  = []

with open("/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/train_test_split.yaml","r") as f:
    data = yaml.load(f)    

for i in data["train"]:
    i = "{0:03d}".format(i)
    x_path = os.path.join("/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations","images",str.format(i)) + "_image.png" 
    img = load_img(x_path,target_size=(128,128))
    img = img_to_array(img)/255
    x_train.append(img)
    y_path = os.path.join("/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations","masks",str(i)) + "_mask.png" 
    img = load_img(y_path,target_size=(128,128),color_mode="grayscale")
    img = img_to_array(img,dtype="uint8")
    img = invert(img)/255.
    y_train.append(img)
    
    
for number in data["test"]:
    number = "{0:03d}".format(number)
    x_path = os.path.join("/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations","images",str.format(number)) + "_image.png" 
    img = load_img(x_path,target_size=(128,128))
    img = img_to_array(img)/255
    x_test.append(img)
    y_path = os.path.join("/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations","masks",str(number)) + "_mask.png" 
    img = load_img(y_path,target_size=(128,128),color_mode="grayscale")
    img = img_to_array(img,dtype="uint8")
    img = invert(img)/255.
    y_test.append(img)

'''
print("x is:")
x = np.array(x)
print(x.shape)
y = np.array(y)
print("y is:")
print(y.shape)
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.2, random_state = 0)
'''

x_train = np.array(x_train)
y_train = np.array(y_train)
x_test = np.array(x_test)
y_test = np.array(y_test)


print("heyy")
print(x_train.shape)
print(x_test.shape)
print(y_train.shape)
print(y_test.shape)

history = unet_model.fit(x_train, y_train, batch_size=4, epochs=150,verbose=1,validation_data=(x_test,y_test),shuffle = True)
unet_model.save("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/v1.h5")
plot_model(unet_model, to_file='/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/unet_model_plot.png', show_shapes=True, show_layer_names=True)

print("checking...")

plt.figure(figsize=(10,3))
plt.subplot(1,3,1)
plt.title("input")
plt.imshow(x_test[2])
plt.subplot(1,3,2)
plt.title("correct label")
plt.imshow(y_test[2,:,:,0],cmap = 'gray')


prediction = unet_model.predict(x_test[2:3])
#prediction shape will be (1,128,128,1)

plt.subplot(1,3,3)
plt.title("prediction")
plt.imshow(prediction[0,:,:,0])
print("hey")
plt.show()
