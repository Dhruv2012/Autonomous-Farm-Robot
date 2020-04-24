import os,glob,random
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
path_x = "/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_imgs"
path_y = "/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_imgs"
h = 512
w = 384

def dice_coef(y_true, y_pred):
    y_true = K.flatten(y_true)
    y_pred = K.flatten(y_pred)
    intersection = K.sum(K.abs(y_true * y_pred),axis = -1)
    return (2.0 * intersection + 1) / (K.sum(K.square(y_true)) + K.sum(K.square(y_pred)) + 1)

def dice_coef_loss(y_true, y_pred):
    return 1 - dice_coef(y_true, y_pred)


def soft_dice_loss(y_true, y_pred): 
    ''' 
    Soft dice loss calculation for arbitrary batch size, number of classes, and number of spatial dimensions.
    Assumes the `channels_last` format.
  
    # Arguments
        y_true: b x X x Y( x Z...) x c One hot encoding of ground truth
        y_pred: b x X x Y( x Z...) x c Network output, must sum to 1 over c channel (such as after softmax) 
        epsilon: Used for numerical stability to avoid divide by zero errors
    
    # References
        V-Net: Fully Convolutional Neural Networks for Volumetric Medical Image Segmentation 
        https://arxiv.org/abs/1606.04797
        More details on Dice loss formulation 
        https://mediatum.ub.tum.de/doc/1395260/1395260.pdf (page 72)
        
        Adapted from https://github.com/Lasagne/Recipes/issues/99#issuecomment-347775022
    '''
    print(y_pred.shape)
    epsilon=1e-6
    # skip the batch and class axis for calculating Dice score
    axes = tuple(range(1, len(y_pred.shape))) 
    print(axes)
    numerator = 2. * np.sum(y_pred * y_true, axes)
    denominator = np.sum(np.square(y_pred) + np.square(y_true), axes)
    
    return 1 - np.mean(numerator / (denominator + epsilon)) # average over classes and batch

def dice_coef_lossv2(y_true, y_pred):
    smooth = 1
    axes = tuple(range(1, len(y_pred.shape)))
    print(axes)
    intersection = K.sum(y_true * y_pred, axes)
    union = K.sum(y_true, axes) + K.sum(y_pred, axes)
    dice = K.mean((2. * intersection + smooth)/(union + smooth), axis=0)
    return 1 - dice


## Weights for Weighted categorical_crossentropy
class_weights = [0.90,0.11,0.1] #Bonirob Dataset
#class_weights = [0.15,0.75,0.10] #cwfid dataset

def weighted_categorical_crossentropy(weights):
    # weights = [0.9,0.05,0.04,0.01]
    def wcce(y_true, y_pred):
        Kweights = K.constant(weights)
        if not K.is_tensor(y_pred): y_pred = K.constant(y_pred)
        y_true = K.cast(y_true, y_pred.dtype)
        return K.categorical_crossentropy(y_true, y_pred) * K.sum(y_true * Kweights, axis=-1)
    return wcce

def load_unet(labels,h,w):
    model = small_Unet(labels,h,w,out_activation=None)
    l = layers.Reshape((h*w,labels))(model.output)
    output = layers.Activation("softmax")(l)
    unet_model = Model(inputs = model.input, outputs = output)
    #unet_model.compile(loss = "categorical_crossentropy",optimizer = "Adam",  metrics=['accuracy'])
    unet_model.summary()
    return unet_model

def load_bonnet(labels,h,w):
    model = bonnet(labels,h,w)
    #model.compile(loss = "categorical_crossentropy",optimizer = "Adam",  metrics=['accuracy'])
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

def load_bonirob(path_x,path_y,h,w):
    result = []
    x = []
    y = []
    x_train = []
    y_train = []
    x_test  = []
    y_test  = []
    
    result = preprocess(path_x,path_y)
    print(len(result))
    
    for i in result:    
        img = multichannel_input(os.path.join(path_x,i),h,w)
        x.append(img)

        img = load_img(os.path.join(path_y,i),target_size=(h,w))
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
        y.append(img)
        
    x = np.array(x)
    y = np.array(y)
    print(x.shape)
    print(y.shape)
    x_train, x_test, y_train, y_test = train_test_split(x, y,random_state = 42)
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


def preprocess(pathx,pathy):
    a = []
    b = []
    result = []
    for files in glob.glob(pathx + "/*.png"):
        a.append(os.path.split(files)[1])
    for files in glob.glob(pathy + "/*.png"):
        b.append(os.path.split(files)[1])
    result = list(set(a) & set(b))
    result = sorted(result)
    return result

def data_gen(img_folder, mask_folder,h ,w ,batch_size):
    c = 0
    n = os.listdir(img_folder) #List of training images
    random.shuffle(n)
    while True:
        img = np.zeros((batch_size,h,w,10),dtype = np.float16)
        mask = np.zeros((batch_size,h*w,3),dtype = np.float16)

        for i in range(c,c+batch_size):
            train_img = multichannel_input(os.path.join(img_folder,n[i]),h,w)
            img[i-c] = train_img

            train_mask = load_img(os.path.join(mask_folder,n[i]),target_size=(h,w))
            train_mask = img_to_array(train_mask,dtype="uint8")/255.
            weed = train_mask[:,:,0]
            crop = train_mask[:,:,1]
            temp = np.zeros((h,w,3))
            temp[:,:, 0] = weed
            temp[:, :, 1] = crop
            back = train_mask.copy()
            back = np.all(train_mask == [0, 0, 0],axis=-1)*1
            temp[:,:, 2] = back
            train_mask = np.reshape(temp,(h*w,3)) 
            mask[i-c] = train_mask

        c+=batch_size
        if(c+batch_size>=len(os.listdir(img_folder))):
            c=0
            random.shuffle(n)
                    # print "randomizing again"
        yield img, mask

#x_train,y_train,x_test,y_test = load_bonirob(path_x,path_y,h,w)
#print(x_train.shape)
#print(y_train.shape)

# check floating values of dataset loaded & is the predicition probability wise or channelwise
# check generator
