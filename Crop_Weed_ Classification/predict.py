import cv2
import argparse
import os
from utils import *
import matplotlib.pyplot as plt
import matplotlib
from keras.utils import to_categorical
from PIL import Image


ap = argparse.ArgumentParser()
ap.add_argument("-i", "--input_dir", required=False ,default = "../../../Datasets/real-images(modified)", help = "Specify the input dir which contains imgs(that are fed to the model)")
ap.add_argument("-m", "--model_weights", default = "../../../Crop_Weed_ Classification/trained_models/bonnet/bonirob/v3/v3.h5", help = "Specifies the model weights path")
ap.add_argument("-r", "--predictions_dir", default = "../../../Crop_Weed_ Classification/trained_models/bonnet/bonirob/v3/real-images-predictions", help = "Specifies the destination dir which stores the results")
args = ap.parse_args()

if(os.path.exists(args.predictions_dir) == False):
    os.mkdir(args.predictions_dir)

print("INPUT_DIR: " + args.input_dir)
print("MODEL_WEIGHTS: " + args.model_weights)
print("PREDICTIONS_DIR: " + args.predictions_dir)

def predict(img):
    h = 512
    w = 384
    seg_model = load_bonnet(3,h,w)
    seg_model.load_weights(args.model_weights)
    input = multichannel_input(img, h, w)
    plt.figure(figsize=(20,10))
    plt.subplot(1,3,1)
    plt.title("input")
    plt.imshow(load_img(img,target_size=(h,w)))
    input = np.expand_dims(input,axis=0)

    pred = seg_model.predict(input)
    plt.subplot(1,3,2)
    plt.title("class-wise prediction")
    plt.imshow(np.reshape(pred,(h,w,3)))
    prediction = pred.argmax(axis=-1)
    prediction = to_categorical(prediction,3)
    prediction = np.reshape(prediction,(h,w,3))
    plt.subplot(1,3,3)
    plt.title("prediction")
    plt.imshow(np.reshape(prediction,(h,w,3)))
    output = Image.fromarray((prediction*255).astype(np.uint8))
    output.save(args.predictions_dir +"/ " +  os.path.basename(img))
    plt.savefig(args.predictions_dir + "/" +  os.path.splitext(os.path.basename(img))[0] + "-prediction.png")
    

for filename in os.listdir(args.input_dir):
    if filename.endswith(".jpg") or filename.endswith(".jpeg"): 
        path = os.path.join(args.input_dir, filename)
        predict(path)
