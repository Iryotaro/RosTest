#!/bin/bash -xve

#required packages
sudo pip install catkin_pkg
sudo pip install empy
sudo pip install pyyaml
sudo pip install rospkg

#ros install
cd ../
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_desktop.git
cd ./ros_setup_scripts_Ubuntu18.04_desktop
bash ./setp0.bash
bash ./setp1.bash

#catkin setup
mkdir -p ~/RosTest/src
cd ~/RosTest/src
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ~/RosTest
catkin_make
