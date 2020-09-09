#!/bin/bash -xve

#required packages
pip install catkin_pkg
pip install empy
pip install pyyaml
pip install rospkg

#ros install
cd ..
git clone https://github.com/Iryotaro/ros_setup_scripts_Ubuntu18.04_desktop.git
cd ./ros_setup_scripts_Ubuntu18.04_desktop
bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p ~/RosTest/src
cd ~/RosTest/src
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ~/RosTest
catkin_make

# Copyright 2016 Ryuichi Ueda
# Released under the BSD License.
# To make line numbers be identical with the book, this statement is written here. Don't move it to the header.
