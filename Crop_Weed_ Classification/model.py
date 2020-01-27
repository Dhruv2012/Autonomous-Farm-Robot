#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 19 03:26:59 2019

@author: dhruv
"""

import os
import numpy as np
import matplotlib.pyplot as plt
import keras.backend as K
import keras
from keras import layers, activations
from keras.models import Model
from keras.preprocessing.image import load_img,img_to_array
from keras.utils.vis_utils import plot_model
from keras.engine.topology import Layer
import tensorflow as tf
import yaml

def small_Unet(labels,h,w,out_activation):
    
    class MySoftmax(Layer):
        #http://cookie-box.hatenablog.com/entry/2017/08/15/231503 
        def __init__(self, **kwargs):
            super(MySoftmax, self).__init__(**kwargs)
        def call(self, x):
            return(activations.softmax(x, axis=3))

    
    
    #block1, 128x128
    inputs = layers.Input(shape=(h,w,3))
    conv11 = layers.Conv2D(16,(3,3),activation="relu",padding="same")(inputs)
    conv12= layers.Conv2D(16,(3,3),activation="relu",padding="same")(conv11)
    conv13= layers.Conv2D(16,(3,3),activation="relu",padding="same")(conv12)
    pool1 = layers.MaxPool2D((2,2))(conv13)
    drop1 = layers.Dropout(0.5)(pool1)
   #block2 64x64
    conv21 = layers.Conv2D(32,(3,3),activation="relu",padding="same")(drop1)
    conv22 = layers.Conv2D(32,(3,3),activation="relu",padding="same")(conv21)
    conv23 = layers.Conv2D(32,(3,3),activation="relu",padding="same")(conv22)
    pool2 = layers.MaxPool2D((2,2))(conv23)
    drop2 = layers.Dropout(0.5)(pool2)
    #block3 32x32
    conv31 = layers.Conv2D(64,(3,3),activation="relu",padding="same")(drop2)
    conv32 = layers.Conv2D(64,(3,3),activation="relu",padding="same")(conv31)
    conv33 = layers.Conv2D(64,(3,3),activation="relu",padding="same")(conv32)
    pool3 = layers.MaxPool2D((2,2))(conv33)
    drop3 = layers.Dropout(0.5)(pool3)

    #block4 16x16
    conv41 = layers.Conv2D(128,(3,3),activation="relu",padding="same")(drop3)
    conv42 = layers.Conv2D(128,(3,3),activation="relu",padding="same")(conv41)
    conv43 = layers.Conv2D(128,(3,3),activation="relu",padding="same")(conv42)
    pool4 = layers.MaxPool2D((2,2))(conv43)
    drop4 = layers.Dropout(0.5)(pool4)
    
    #bottom of Unet 8x8
    conv5 = layers.Conv2D(256,(3,3),activation="relu",padding="same")(drop4)
    conv5 = layers.Conv2D(256,(3,3),activation="relu",padding="same")(conv5)

    #upblock4
    x = layers.UpSampling2D((2,2))(conv5)
    x = layers.Conv2D(128,(3,3),activation="relu",padding="same")(x)
    x = layers.concatenate([conv43,x])
    x= layers.Conv2D(128,(3,3),activation="relu",padding="same")(x)
    x = layers.Conv2D(128,(3,3),activation="relu",padding="same")(x)
    x = layers.Dropout(0.5)(x)
    #upblock3
    x = layers.UpSampling2D((2,2))(x)
    x = layers.Conv2D(64,(3,3),activation="relu",padding="same")(x)
    x = layers.concatenate([conv33,x])
    x= layers.Conv2D(64,(3,3),activation="relu",padding="same")(x)
    x= layers.Conv2D(64,(3,3),activation="relu",padding="same")(x)
    x = layers.Dropout(0.5)(x)
    #upblock2
    x = layers.UpSampling2D((2,2))(x)
    x = layers.Conv2D(32,(3,3),activation="relu",padding="same")(x)
    x = layers.concatenate([conv23,x])
    x= layers.Conv2D(32,(3,3),activation="relu",padding="same")(x)
    x= layers.Conv2D(32,(3,3),activation="relu",padding="same")(x)
    x = layers.Dropout(0.5)(x)
    #upblock1
    x = layers.UpSampling2D((2,2))(x)
    x = layers.Conv2D(16,(3,3),activation="relu",padding="same")(x)
    x = layers.concatenate([conv13,x])
    x= layers.Conv2D(16,(3,3),activation="relu",padding="same")(x)
    x= layers.Conv2D(16,(3,3),activation="relu",padding="same")(x)
    x = layers.Dropout(0.5)(x)
    #to label image (2 labels)
    x = layers.Conv2D(labels,(1,1))(x)
    if out_activation == "sigmoid":
        outputs = layers.Activation("sigmoid")(x)
    elif out_activation == "softmax":
        #outputs =MySoftmax()(x)
        outputs = layers.Activation("softmax")(x)
    elif  out_activation == None:
        outputs = x
    model = Model(inputs=inputs,outputs=outputs)
    return model

def bonnet(labels,h,w):
    def conv_bonnet(ip):
        x = layers.Conv2D(16,(5,5),activation="relu",padding="same")(ip)
        x = layers.BatchNormalization()(x)
        return x
     
    def residual_bonnet(ip):
        x = layers.Conv2D(8,(1,1),activation="relu",padding="same")(ip)
        x = layers.Conv2D(8,(5,1),activation="relu",padding="same")(x)
        x = layers.Conv2D(8,(1,5),activation="relu",padding="same")(x)
        x = layers.Conv2D(16,(1,1),activation="relu",padding="same")(x)
        ans = layers.Add()([ip,x])
        return ans
 
    def pooling_bonnet(ip):
        x = layers.MaxPooling2D(pool_size=(2,2),strides = 2)(ip)
        return x
 
    def unpooling_bonnet(args):
        mask, x = args
        return layers.multiply([mask,x])

    def mask_make(x, orig):
        t = layers.UpSampling2D()(x)
        _,a,b,c = orig.shape 
        xReshaped = layers.Reshape((1,a*b*c))(t)
        origReshaped = layers.Reshape((1,a*b*c))(orig)
        together = layers.Concatenate(axis = -1)([origReshaped,xReshaped])
        togReshaped = layers.Reshape((2,a,b,c))(together)
        bool_mask = layers.Lambda(lambda t: K.greater_equal(t[:,0], t[:,1]))(togReshaped)
        mask = layers.Lambda(lambda t: K.cast(t, dtype='float32'))(bool_mask)
        return mask

    masks = []
    inputs = layers.Input(shape=(h,w,14))
    
    x = conv_bonnet(inputs)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    orig = x
    x = pooling_bonnet(x)
    
    masks.append(mask_make(x,orig))
    

    x = residual_bonnet(x)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    orig = x
    x = pooling_bonnet(x)
    masks.append(mask_make(x,orig))
    
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    orig = x
    x = pooling_bonnet(x)
    masks.append(mask_make(x,orig))
    
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    orig = x
    x = pooling_bonnet(x)
    masks.append(mask_make(x,orig))
    
    #############  DECODER  ###################
    
    x = layers.UpSampling2D((2, 2))(x)
    temp = tf.convert_to_tensor(masks[3],dtype = tf.float32)
    args = [temp,x]
    x = keras.layers.Lambda(unpooling_bonnet)(args)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    
    x = layers.UpSampling2D((2, 2))(x)
    temp = tf.convert_to_tensor(masks[2],dtype = tf.float32)
    args = [temp,x]
    x = keras.layers.Lambda(unpooling_bonnet)(args)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    
    x = layers.UpSampling2D((2, 2))(x)
    temp = tf.convert_to_tensor(masks[1],dtype = tf.float32)
    args = [temp,x]
    x = keras.layers.Lambda(unpooling_bonnet)(args)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    
    x = layers.UpSampling2D((2, 2))(x)
    temp = tf.convert_to_tensor(masks[0],dtype = tf.float32)
    args = [temp,x]
    x = keras.layers.Lambda(unpooling_bonnet)(args)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    x = residual_bonnet(x)
    
    x = layers.Conv2D(labels,(1,1),activation="relu",padding="same")(x)
    outputs = layers.Activation("softmax")(x)
    
    model = Model(inputs = inputs, outputs = outputs)
    return model

#model = bonnet(3,512,384)
#model.summary()
     