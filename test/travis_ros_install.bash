#!/bin/bash -xve

#required packages
sudo pip install catkin_pkg
sudo pip install empy
sudo pip install pyyaml
sudo pip install rospkg

#ros install
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_desktop.git
cd ./ros_setup_scripts_Ubuntu18.04_desktop
bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make
