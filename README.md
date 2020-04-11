# Autonomous-Farm-Robot(Ongoing)


# Tools & Components list:
 | Components        | Specifications                            |   
 | ------------------|:-----------------------------------------:|
 | Nvidia Jetson Nano|                                           |
 | Ublox M8N GPS     |                                           |  
 | MPU 6050          |                                           |

# Features:

# a) Remote Desktop for Jetson Nano:
For Remote Control, user needs to know the username of the board so for the initial configuration display is required.

Controlling the board requires a display to be connected with board using HDMI. It does not support VGA compatible screens and hence requires HDMI compatible screens.
Apart from this, it can be controlled by the user remotely from his/her machine using the ssh connection.

SSH:
1. Insert the SD Card and connect the ethernet to the board to provide Internet connection.
2. Power on the board.
3. On the user machine type the following commands.

   `arp -a`
   
   It will basically provide the IP address of the Jetson.
   
   `ssh farmbot@10.42.0.75`
   
   Here, farmbot: Username of Jetson Nano
         10.42.0.75: IP address of Jetson Nano(found using `arp -a` or `ifconfig`) 
   
   Now that you can SSH in the Jetson from your own computer feel free to disconnect the monitor, keyboard, and mouse and        free up some space on your desk!

4. Now for the remote control, VNC Server needs to be installed and enabled on the Jetson nano.
   TYpe the following commands on Jetson nano.
    
     ```
     sudo apt update
     sudo apt install vino
     ```
     
     ```
     export DISPLAY=:0`
     gsettings set org.gnome.Vino enabled true
     gsettings set org.gnome.Vino prompt-enabled false
     gsettings set org.gnome.Vino require-encryption false
     /usr/lib/vino/vino-server &
     ```
     Or make a bash script of the above commands and run the bash script.
     
     Bash Script:
     ```
     #!/bin/bash
     export DISPLAY=:0
     gsettings set org.gnome.Vino enabled true
     gsettings set org.gnome.Vino prompt-enabled false
     gsettings set org.gnome.Vino require-encryption false
     /usr/lib/vino/vino-server &
     ```
     Execute the script.
     ```
     chmod +x scriptname.sh
     bash scriptname.sh
     ```
     
     Then at host or user machine,activate Remmina  
     ```
     Group = WORKGROUP
     
     Protocol = VNC
     
     Server = IP_Address_of_host_or_usermachine  (Can be obtained by `arp -a` command)   
     
     Username = Username_of_host_or_usermachine
     
     Password = ***
     ```
     Connect using Remmina.
   
     And you have full GUI access of the board on your machine.
# Resources Used:     
     
# Project Build-Map:     
# Happy building
If you have any questions or run into problems during understanding of our project, please reach out to us through mail. We would be happy to share as much as possible.

# Project Team

Project Guide:
Dr. Anand Darji,
Head & Associate Professor,
ECED, SVNIT.

Development Team:
Mr. Dhruv Patel(U16EC053, SVNIT) --
Mr. Meet Gandhi(U16EC056, SVNIT) --
Mr. Shankarnarayan(U16EC07,SVNIT)

Special Thanks To:
Mr. Mahesh Birajdar(U16ME016) and @Team DRISHTI for helping us in designing and manufacturing of AGRIBOT.
