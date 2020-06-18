
<center>  <h1>Autonomous-Farm-Robot(AGRIBOT)</h1>   </center> 
 

## About Project
<p align = "justify">
The primary objective of this project is to design an autonomous agricultural robot specifically
used for the removal of weed on the real-time basis without any human involvement. This will
help to offer better and nutrients rich yield involving less man-power than the conventional
agriculture. This project can also be extended to design robot various other applications involved
in farming like ploughing, harvesting, etc. in turn making agriculture more autonomous and
providing better yields which in turn will impact on the country’s GDP and lesser farmer suicide
rates.It is a UG project under guidance of TEQIP-3 and ECE department at SVNIT.
</p>     
<p><img src="Documents/readme-images/AGRIBOT.jpg" width="45%"/><img src="Documents/readme-images/AGRIBOT_solidworks.JPG" width="55%"/></p>

## Folder Organization
![Folder_str](Documents/readme-images/Folder_str.jpg)
<p align = "justify">
</p>

## Features
### Autonomous Navigation
![autonomous navigation](Documents/readme-images/simulation.gif)

### Crop Weed Classification
<p align="justify">
We trained and tested 2 models: UNet & Bonnet on [*CWFID*](https://github.com/cwfid/dataset) & [*Bonn*](https://www.ipb.uni-bonn.de/data/sugarbeets2016/) Datasets. However, implemenatation of **Bonnet Architecture** from Research Paper: [*Real-time Semantic Segmentation of Crop and Weed for Precision Agriculture Robots Leveraging Background Knowledge in CNNs*](https://github.com/Dhruv2012/Autonomous-Farm-Robot/blob/master/Documents/Research Papers/Crop_Weed_Classification/1709.06764.pdf) performed better than its UNet counterpart and was suitable for real-time deployment due to its approx. 100x lesser parameters compared to UNet. Hence, **Bonnet** was selected as the final classification model.
</p>

![gazebo prediction](Documents/readme-images/model-prediction-on-gazebo.gif)


**Prediction on CWFID Dataset** 
![](Documents/readme-images/bonnet-on-cwfid.png)

**Prediction on Bonn Dataset**
![](Documents/readme-images/bonnet-on-bonn.png)

**Metrics**

![](Documents/readme-images/bonnet-metrics.png)

**Real-time latency**: Avg 2.5 fps on **i7 + 940 MX**

## Project Build-Map     
![Timeline of Project](Documents/readme-images/Timeline.png)

## Wiki
For more details about project, visit below links:
1. [*Configure Jetson Nano for Remote access*](https://github.com/Dhruv2012/Autonomous-Farm-Robot/wiki/Configuring-Jetson-Nano)
2. [*Electronics Components*](https://github.com/Dhruv2012/Autonomous-Farm-Robot/wiki/Electronics-Components)

## Happy building!!
<p align = "justify">
Feel free to raise an issue if you face any problems while implementing the modules. If you have any questions or run into problems during understanding of our project, please reach out to us through mail. We would be happy to share as much as possible.\
</p> 
Email ID: farmbot.svnit@gmail.com

## Project Team
Project Guide:\
Dr. Anand Darji,\
Head & Associate Professor,\
ECED, SVNIT.

Development Team:\
Mr. Dhruv Patel(U16EC053, SVNIT)\
Mr. Meet Gandhi(U16EC056, SVNIT)\
Mr. Shankarnarayan(U16EC074,SVNIT)
 
Special Thanks To:\  
**Mr. Mahesh Birajdar(U16ME084),SVNIT** and [*Team DRISHTI*](https://github.com/DRISHTI-SVNIT) for helping us in solidwork designing and manufacturing of AGRIBOT.
