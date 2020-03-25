#SIGMOID/SOFTMAX
#LOSS
#3RD DIMENISON

import os,glob
import numpy as np
import matplotlib.pyplot as plt
from model import *
import tensorflow as tf
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
from keras.callbacks import ModelCheckpoint, EarlyStopping, CSVLogger, TensorBoard

reload_weights = True         # model trains from scratch if False
training_model = {"unet": 0, "bonnet": 1}
dataset = {"cwfid": 0, "bonirob": 1}
MODEL = training_model["bonnet"]
DATASET = dataset["bonirob"]
NO_OF_EPOCHS = 5
BATCH_SIZE = 4
results_dir = "/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/trained_models/bonnet/bonirob/v2/"
save_weights_path = "/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/trained_models/bonnet/bonirob/v2/v2.h5"
############## CWFID DATASET ###################
path_x = "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/images"
path_y = "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/annotations"
path_yaml = "/home/dhruv/Final_Year_Project/Datasets/cwfid dataset(Annotated)/WithAnnotations/train_test_split.yaml"
h = 128
w = 128
###############################################

############## BONIROB DATASET #################
train_img_path = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img_preprocessed/train'
train_mask_path = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img_preprocessed/train'

val_img_path = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img_preprocessed/val'
val_mask_path = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img_preprocessed/val'

test_img_path = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img_preprocessed/test'
test_mask_path = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img_preprocessed/test'
################################################
x_train = []
y_train = []
x_test  = []
y_test  = []


if(MODEL == training_model["unet"]):
    h = 128
    w = 128
    if(reload_weights == False):
        print("INITIALIZING TRAINING PROCEDURE .......")
        seg_model = load_unet(3,h,w)
    else:
        print("RELOADING PREVIOUS WEIGHTS............")
        seg_model = load_unet(3,h,w)
        seg_model.load_weights("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/cropvsweedv1.h5")
       
    if(DATASET == dataset["cwfid"]):
        x_train,y_train,x_test,y_test = load_cwfid_withyaml(path_x,path_y,path_yaml,h,w)
    elif(DATASET == dataset["bonirob"]):
        NO_OF_TRAINING_IMAGES = len(os.listdir(train_img_path))
        NO_OF_VAL_IMAGES = len(os.listdir(val_img_path))
        NO_OF_TEST_IMAGES = len(os.listdir(test_img_path))
        train_gen = data_gen(train_img_path,train_mask_path ,h = 512 ,w = 384 ,batch_size = BATCH_SIZE)
        val_gen =   data_gen(val_img_path,val_mask_path ,h = 512 ,w = 384 ,batch_size = BATCH_SIZE)
        test_gen =  data_gen(test_img_path,test_mask_path ,h = 512 ,w = 384 ,batch_size = BATCH_SIZE)

elif(MODEL == training_model["bonnet"]):
    h = 512
    w = 384
    if(reload_weights == False):
        print("INITIALIZING TRAINING PROCEDURE.......")
        seg_model = load_bonnet(3,h,w)
    else:
        print("RELOADING PREVIOUS WEIGHTS............")
        seg_model = load_bonnet(3,h,w)
        seg_model.load_weights("/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/trained_models/bonnet/bonirob/v2/v2.h5")

    
    if(DATASET == dataset["cwfid"]):
        x_train,y_train,x_test,y_test = load_cwfid_withyaml(path_x,path_y,path_yaml,h,w)
    elif(DATASET == dataset["bonirob"]):
        NO_OF_TRAINING_IMAGES = len(os.listdir(train_img_path))
        NO_OF_VAL_IMAGES = len(os.listdir(val_img_path))
        NO_OF_TEST_IMAGES = len(os.listdir(test_img_path))
        train_gen = data_gen(train_img_path,train_mask_path ,h = 512 ,w = 384 ,batch_size = BATCH_SIZE)
        val_gen =   data_gen(val_img_path,val_mask_path ,h = 512 ,w = 384 ,batch_size = BATCH_SIZE)
        test_gen =  data_gen(test_img_path,test_mask_path ,h = 512 ,w = 384 ,batch_size = BATCH_SIZE)
        print(train_gen)

checkpoint = ModelCheckpoint(results_dir + "checkpoints/" + "bonnet_{epoch:03d}_{val_loss:.2f}.hdf5", monitor='val_loss', verbose=1, save_best_only=True, save_weights_only = True ,mode='min', period = 20)
csv_logger = CSVLogger(results_dir + "training.csv", separator=',', append=True)
tensorboard = TensorBoard(log_dir= results_dir + "graphs", histogram_freq=0, batch_size=32, write_graph=True, write_grads=False, write_images=False, embeddings_freq=0, embeddings_layer_names=None, embeddings_metadata=None, embeddings_data=None, update_freq='epoch')
stopping = EarlyStopping(monitor='val_loss', min_delta=0.005, patience = 1, verbose=0, mode='min', baseline=None, restore_best_weights=True)
callbacks_list = [checkpoint, csv_logger,stopping]

seg_model.compile(loss = "categorical_crossentropy",optimizer = "Adam",  metrics=['accuracy'])
'''
if(DATASET == dataset["cwfid"]):
    print_shapes(x_train,y_train,x_test,y_test)
    history = seg_model.fit(x_train, y_train, batch_size= BATCH_SIZE, epochs= NO_OF_EPOCHS,verbose=1,validation_data = (x_test,y_test),shuffle = True,callbacks = callbacks_list)
elif(DATASET == dataset["bonirob"]):
    print("hryy")
    history = seg_model.fit_generator(train_gen, epochs = NO_OF_EPOCHS, steps_per_epoch = (NO_OF_TRAINING_IMAGES//BATCH_SIZE),validation_data=val_gen, validation_steps=(NO_OF_VAL_IMAGES//BATCH_SIZE),callbacks = callbacks_list)
    metrics = seg_model.evaluate_generator(test_gen,steps = (NO_OF_TEST_IMAGES//BATCH_SIZE))
    print("LOSS: " + str(metrics[0]) + "Accuracy:" + str(metrics[1]))
seg_model.save_weights(save_weights_path)

plot_model(seg_model, to_file='/home/dhruv/Final_Year_Project/Crop_Weed_ Classification/bonnet_model_plot.png', show_shapes=True, show_layer_names=True)
print("checking...")

#plot_history(history)



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
plt.show()
'''




'''
imgs_x = []
imgs_y = []
test_imgx = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img_preprocessed/train/_2016-05-27-10-26-48_5_frame290.png'
imgx = multichannel_input(test_imgx,h,w)
imgs_x.append(imgx)
test_imgy = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img_preprocessed/train/_2016-05-27-10-26-48_5_frame290.png'
imgy = load_img(test_imgy,target_size=(h,w))
imgy = img_to_array(imgy,dtype="uint8")/255.
weed = imgy[:,:,0]
crop = imgy[:,:,1]
temp = np.zeros((h,w,3))
temp[:,:, 0] = weed
temp[:, :, 1] = crop
back = imgy.copy()
back = np.all(imgy == [0, 0, 0],axis=-1)*1
temp[:,:, 2] = back
imgy = np.reshape(temp,(h*w,3))
imgs_y.append(imgy)
plt.figure(figsize=(10,3))
plt.subplot(1,3,1)
plt.title("input")
plt.imshow(load_img(test_imgx,target_size=(h,w)))
imgs_x = np.array(imgs_x)
imgs_y = np.array(imgs_y)
plt.subplot(1,3,2)
plt.title("correct label")
plt.imshow(np.reshape(imgy,(h,w,3)))
prediction = seg_model.predict(imgs_x)
#prediction shape will be (1,128,128,1)
print(prediction.shape)
print(prediction[:,:,0])
plt.subplot(1,3,3)
plt.title("prediction")
plt.imshow(np.reshape(prediction,(h,w,3)))
print("hey")
plt.show()
'''




'''
plt.figure(figsize=(10,3))
#plt.subplot(1,3,1)
#plt.title("input")
#plt.imshow(x_test[2])
#plt.subplot(1,3,2)
#plt.title("correct label")
#plt.imshow(np.reshape(y_test[2,:],(h,w,3)))


prediction = seg_model.predict(x_test[0:1])
#prediction shape will be (1,128,128,1)
plt.subplot(1,3,3)
plt.title("prediction")
plt.imshow(np.reshape(prediction,(h,w,3)))
print("hey")
plt.show()





index = 1
x_test = np.array(x_test,dtype=np.float16)
y_test = np.array(y_test)
print(x_test.shape)
print(y_test.shape)
plt.figure(figsize=(10,3))
plt.subplot(1,3,1)
plt.title("input")
ip = x_test[index,:,:,0:3]
print(np.reshape(y_test[index],(h,w,3)))
plt.imshow(np.uint8(ip*255))
plt.subplot(1,3,2)
plt.title("correct label")
plt.imshow(np.reshape(y_test[index],(h,w,3)))


prediction = seg_model.predict(x_test[index:index+1])
# #prediction shape will be (1,128,128,1)
plt.subplot(1,3,3)
plt.title("prediction")
plt.imshow(np.reshape(prediction,(h,w,3)))
print("hey")
plt.show()
'''
def visualize_results(seg_model,index):
    imgs_x = []
    imgs_y = []
    test_imgx = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img_preprocessed/train/_2016-05-27-10-26-48_5_frame290.png'
    imgx = multichannel_input(test_imgx,h,w)
    imgs_x.append(imgx)
    test_imgy = '/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img_preprocessed/train/_2016-05-27-10-26-48_5_frame290.png'
    imgy = load_img(test_imgy,target_size=(h,w))
    imgy = img_to_array(imgy,dtype="uint8")/255.
    weed = imgy[:,:,0]
    crop = imgy[:,:,1]
    temp = np.zeros((h,w,3))
    temp[:,:, 0] = weed
    temp[:, :, 1] = crop
    back = imgy.copy()
    back = np.all(imgy == [0, 0, 0],axis=-1)*1
    temp[:,:, 2] = back
    imgy = np.reshape(temp,(h*w,3))
    imgs_y.append(imgy)
    plt.figure(figsize=(10,3))
    plt.subplot(1,3,1)
    plt.title("input")
    plt.imshow(load_img(test_imgx,target_size=(h,w)))
    imgs_x = np.array(imgs_x)
    imgs_y = np.array(imgs_y)
    plt.subplot(1,3,2)
    plt.title("correct label")
    plt.imshow(np.reshape(imgy,(h,w,3)))
    prediction = seg_model.predict(imgs_x)
    #prediction shape will be (1,128,128,1)
    print(prediction.shape)
    print(prediction[:,:,0])
    plt.subplot(1,3,3)
    plt.title("prediction")
    plt.imshow(np.reshape(prediction,(h,w,3)))
    print("hey")
    plt.show()
    
    global x_test,y_test
    x_test = np.array(x_test,dtype=np.float16)
    y_test = np.array(y_test)
    print(x_test.shape)
    print(y_test.shape)
    plt.figure(figsize=(10,3))
    plt.subplot(1,3,1)
    plt.title("input")
    ip = x_test[index,:,:,0:3]
    print(np.reshape(y_test[index],(h,w,3)))
    plt.imshow(np.uint8(ip*255))
    plt.subplot(1,3,2)
    plt.title("correct label")
    plt.imshow(np.reshape(y_test[index],(h,w,3)))

    prediction = seg_model.predict(x_test[index:index+1])
    # #prediction shape will be (1,128,128,1)
    plt.subplot(1,3,3)
    plt.title("prediction")
    plt.imshow(np.reshape(prediction,(h,w,3)))
    print("hey")
    plt.show()

visualize_results(seg_model,5)