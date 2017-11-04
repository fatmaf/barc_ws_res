#!/bin/bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get --yes --force-yes install ros-kinetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
#echo "source /home/edoardo/catkin_ws/devel/setup.bash"
#export ROS_PACKAGE_PATH=/home/edoardo/catkin_ws/src:$ROS_PACKAGE_PATH
#export EDITOR=gedit
source ~/.bashrc
sudo apt-get --yes --force-yes install python-rosinstall
sudo apt-get --yes --force-yes install ros-kinetic-navigation ros-kinetic-slam-gmapping ros-kinetic-ros-control ros-kinetic-ros-controllers ros-kinetic-rviz
#http://wiki.ros.org/turtlebot_gazebo/Tutorials/kinetic/Explore%20the%20Gazebo%20world
sudo apt-get --yes --force-yes install ros-kinetic-turtlebot-apps ros-kinetic-turtlebot-rviz-launchers
sudo apt-get --yes --force-yes install ros-kinetic-turtlebot ros-kinetic-turtlebot-apps ros-kinetic-turtlebot-interactions ros-kinetic-turtlebot-simulator ros-kinetic-kobuki-ftdi ros-kinetic-rocon-remocon ros-kinetic-rocon-qt-library ros-kinetic-ar-track-alvar-msgs
sudo apt-get --yes --force-yes install ros-kinetic-turtlebot-teleop
sudo apt-get --yes --force-yes install ros-kinetic-ros-control ros-kinetic-ros-controllers
#http://wiki.lofarolabs.com/index.php/Moving_The_Pioneer_3-DX_In_Gazebo
git clone https://github.com/SD-Robot-Vision/PioneerModel.git
git clone https://github.com/SD-Robot-Vision/p3dx_mover.git
#http://web.engr.oregonstate.edu/%7Echungje/Code/Pioneer3dx%20simulation/ros-indigo-gazebo2-pioneer.pdf
git clone https://github.com/JenJenChung/pioneer_gazebo_ros.git
git clone https://github.com/JenJenChung/pioneer_2dnav.git
git clone https://github.com/JenJenChung/nav_bundle.git
git clone https://github.com/JenJenChung/simple_navigation_goals.git
git clone https://github.com/JenJenChung/pioneer_description.git

