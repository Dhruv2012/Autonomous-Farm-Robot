import os,glob,shutil,random


pathx = "/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/ijrr_sugarbeets_2016_annotations/CKA_160421/images/rgb"
pathy = "/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/ijrr_sugarbeets_2016_annotations/CKA_160421/annotations/dlp/colorCleaned"
a = []
b = []
result = []
x_train = []
y_train = []
'''
for files in glob.glob(pathx + "/*.png"):
    #print(files)
    a.append(os.path.split(files)[1])
print(len(a))

for files in glob.glob(pathy + "/*.png"):
    b.append(os.path.split(files)[1])
print(len(b))

result = list(set(a) & set(b))
result = sorted(result)
#print(result)

print(len(list(set(a) - set(result))))
#1461247063_539566720
cnt = 1
for i in result:
    if(cnt>0):
        x_train.append(os.path.join(pathx,i))
        y_train.append(os.path.join(pathy,i))
    cnt = cnt -1
print(x_train)
print(y_train)
'''

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

path_x = "/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_imgs"
path_y = "/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_imgs"
result = preprocess(path_x,path_y)
#print(result)
'''
for i in result:
    shutil.copy(os.path.join(path_x,i),'/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img(preprocessed)')
    shutil.copy(os.path.join(path_y,i),'/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img(preprocessed)')
'''    
#_________________________________________________________________________________________________________________________
# FOr splitting files of a folder into train, test and val files.
total_imgs = len(result)
counter_train = 0
counter_test = 0 
counter_val = 0
result_copy = []
result_copy = result
train_imgs = round(0.8*0.8*total_imgs)
test_imgs = round(0.2*total_imgs)
val_imgs = round(0.8*0.2*total_imgs)
print(train_imgs)
print(test_imgs)
print(val_imgs)
while(counter_train <= train_imgs):   
    #random_file=random.choice(os.listdir("/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img(preprocessed)"))
    if(counter_train < train_imgs):
        random_file = random.choice(result_copy)
        shutil.copy(os.path.join('/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img(preprocessed)',random_file),'/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img(preprocessed)/train')
        shutil.copy(os.path.join('/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img(preprocessed)',random_file),'/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img(preprocessed)/train')
        result_copy.remove(random_file)
        counter_train+=1

    if(counter_test < test_imgs):
        random_file = random.choice(result_copy)
        shutil.copy(os.path.join('/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img(preprocessed)',random_file),'/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img(preprocessed)/test')
        shutil.copy(os.path.join('/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img(preprocessed)',random_file),'/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img(preprocessed)/test')
        result_copy.remove(random_file)
        counter_test+=1
    
    if(counter_val < val_imgs):
        random_file = random.choice(result_copy)
        shutil.copy(os.path.join('/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img(preprocessed)',random_file),'/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/input_img(preprocessed)/val')
        shutil.copy(os.path.join('/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img(preprocessed)',random_file),'/home/dhruv/Final_Year_Project/Datasets/BoniRob dataset/output_img(preprocessed)/val')
        result_copy.remove(random_file)
        counter_val+=1    
    
    print(random_file)
    
