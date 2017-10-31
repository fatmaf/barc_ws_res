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

## Getting Started with ROS 

### Testing your installation 

### Creating a workspace 

## Getting started with the turtlebot

### Teleop 

### Creating a map
A pre built map of Sloman Lounge is here: 

### Navigation 

### Simulator 


## Get 'Hacking' 


* Have the turtlebot navigate to different locations in Sloman Lounge and place obstacles in its path. The robot should be able to detect that an obstacle is in its path and determine whether it is a human or an object. If it is human it should ask the human to move. Make sure that the robot can get to the location if there is still any path available. 
* Simulate a door by blocking the entire path of the robot or using one of the actual doors in the lounge, and have the robot navigate when the door is open or closed. 
* Make a person follower: Have the turtlebot follow a person around the lounge and stop when the person gives a sign (like hand gesture or says stop). The turtlebot should be able to go back to its original location afterwards.
* Facial Recognition and following: Have the turtlebot recognise faces (two is fine) and follow one of the faces (like rotate if the person goes behind the robot). You could place the robot on a table to do this. 

