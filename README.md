# BARC Robotics Workshop - Nov 2017

## Setting Up 

We recommend ROS and Ubuntu. ROS does have not so great support for other operating systems too. You can take a look here: http://wiki.ros.org/kinetic/Installation

In case you do not have Ubuntu or ROS installed. 

If you do not have Ubuntu and don't want to install it. You can get a virtual machine (vm) image. 

### Virtual Machine 
* Download virtualbox (https://www.virtualbox.org/)
* Grab the image for ubuntu with ROS indigo here: https://nootrix.com/diy-tutos/ros-indigo-virtual-machine/

__This is not the latest version. If you'd like a newer version, you may have to install the machine yourself. 
You can grab an image here http://www.osboxes.org/ubuntu/ __

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
```sudo apt-get install ros-indigo-turtlebot ros-indigo-turtlebot-apps ros-indigo-turtlebot-interactions ros-indigo-turtlebot-simulator ros-indigo-kobuki-ftdi ros-indigo-rocon-remocon ros-indigo-rocon-qt-library ros-indigo-ar-track-alvar-msgs```

If you have kinetic you will need to remove some of these and replace indigo with kinectic in the command above. 

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
### Creating a map
A pre built map of Sloman Lounge is here: 

### Navigation 

### Simulator 


## Get 'Hacking' 


* Have the turtlebot navigate to different locations in Sloman Lounge and place obstacles in its path. The robot should be able to detect that an obstacle is in its path and determine whether it is a human or an object. If it is human it should ask the human to move. Make sure that the robot can get to the location if there is still any path available. 
* Simulate a door by blocking the entire path of the robot or using one of the actual doors in the lounge, and have the robot navigate when the door is open or closed. 
* Make a person follower: Have the turtlebot follow a person around the lounge and stop when the person gives a sign (like hand gesture or says stop). The turtlebot should be able to go back to its original location afterwards.
* Facial Recognition and following: Have the turtlebot recognise faces (two is fine) and follow one of the faces (like rotate if the person goes behind the robot). You could place the robot on a table to do this. 

