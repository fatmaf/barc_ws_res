# BARC Robotics Workshop
##### 4 Nov 2017

Introduction Slides: https://github.com/fatmaf/barc_ws_res/blob/master/BarcWorkshop.pdf

## Setting Up 

We recommend ROS and Ubuntu. ROS does have not so great support for other operating systems too. You can take a look here: http://wiki.ros.org/kinetic/Installation

In case you do not have Ubuntu or ROS installed. 

If you do not have Ubuntu and don't want to install it. You can get a virtual machine (vm) image. 

### Virtual Machine 
* Download virtualbox (https://www.virtualbox.org/)
* Grab the image for ubuntu with ROS indigo here: https://nootrix.com/diy-tutos/ros-indigo-virtual-machine/

_This is not the latest version. If you'd like a newer version, you may have to install the machine yourself. 
You can grab an image here_ http://www.osboxes.org/ubuntu/ 

### Installing Ubuntu 

Instructions here : https://builtvisible.com/the-ubuntu-installation-guide/

You can download 14.04 or 16.04. We reccommend the latest. 

* _With Ubuntu 14.04 you will need to install ROS Indigo_
* _With Ubuntu 16.04 you will need to install ROS Kinetic_

### Installing ROS 
Depending on your ubuntu version: 
* Kinetic : http://wiki.ros.org/kinetic/Installation/Ubuntu
* Indigo : http://wiki.ros.org/indigo/Installation/Ubuntu

Please follow all the way through till environment setup (including the environment setup). 
It is recommended that you add the line `source /opt/ros/kinectic/setup.bash` or `source /opt/ros/indigo/setup.bash` (depending on your installation) to your .bashrc file.

## Getting Started with ROS 
To test your installation you can open up terminal (pressing control, alt, t) and run the command `roscore` . 

### Creating a workspace 
Lets create the working directory for this workshop. 
```mkdir -p ~/ros_ws/src```

You can navigate to this directory by `cd ~/ros_ws/src` 

### Installing the Kinect Driver 
Download the script and run it 

## Getting started with the turtlebot
Install the following: 
```
sudo apt-get install ros-indigo-turtlebot ros-indigo-turtlebot-apps ros-indigo-turtlebot-interactions ros-indigo-turtlebot-simulator ros-indigo-kobuki-ftdi ros-indigo-rocon-remocon ros-indigo-rocon-qt-library ros-indigo-ar-track-alvar-msgs
```

If you want to install everything turtlebot you can do: 
```
sudo apt-get install ros-indigo-turtlebot* 
```

If you have kinetic you will need to replace indigo with kinectic in the command above. Some of these packages are not available in kinetic. 
For kinectic you may have to use ``apt`` instead of ```apt-get``

### Teleop 
Make sure ros is not running. Open two new terminals and run the following (one command in each)
```
roslaunch turtlebot_bringup minimal.launch 
roslaunch turtlebot_teleop keyboard_teleop.launch
```
You should now be able to move the turtlebot 
#### Simulation 
If you don't have the actual robot , you can try this in simulation 
```
roslaunch turtlebot_gazebo turtlebot_world.launch
roslaunch turtlebot_teleop keyboard_teleop.launch
```
### Map of Sloman Lounge 
A pre built map of Sloman Lounge is here: 
(download both files, you may need to make a few changes to the .yaml (the address of the pgm file))
https://github.com/fatmaf/barc_ws_res/blob/master/workshop_map.pgm
https://github.com/fatmaf/barc_ws_res/blob/master/workshop_map.yaml

### Moving the robot 
Download turtlebot_map_startup.launch here: https://github.com/fatmaf/barc_ws_res/blob/master/turtlebot_map_startup.launch 
Place it in your working directory and use roslaunch to launch it. 

You can read more about roslaunch here: http://wiki.ros.org/roslaunch

Use the 2D Nav Goal button to send the robot to a goal location on the map. It'll start moving instantly to that location. 

Now write a program that can send the robot to a single location: 
Move base is reponsible for moving the robot http://wiki.ros.org/move_base 

If you feel very lost you can look here for more detailed help: http://learn.turtlebot.com/ (you can find code that does exactly this in python, just have to look)

Here is c++ code that helps but enter at your own risk http://wiki.ros.org/navigation/Tutorials/SendingSimpleGoals

### Turtlebot Race 
Have your turtlebot visit the following locations in order: 
* a
* b 
* c 
* d

