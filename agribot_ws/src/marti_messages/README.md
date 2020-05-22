marti\_messages ![CI](https://github.com/swri-robotics/marti_messages/workflows/CI/badge.svg) ![CI](https://github.com/swri-robotics/marti_messages/workflows/CI/badge.svg?branch=dashing-devel)
=============================================================================================

This repository provides various messages created at [Southwest Reseach Institute](http://www.swri.org)'s [Intelligent Vehicle Systems](http://www.swri.org/4org/d10/isd/ivs/default.htm) section for working with [Robot Operating System(ROS)](http://www.ros.org).

The `master` branch provides support for ROS Kinetic and Melodic; the `dashing-devel` branch provides support for ROS Dashing and Eloquent.

Installation
------------

If you have installed ROS, you can install any of the packages in this repository with apt-get:

    sudo apt-get install ros-${ROS_DISTRO}-<package>


Building From Source (ROS Kinetic, Melodic)
-------------------------------------------------------

These directions assume you have already set up a catkin workspace. See [this tutorial](http://wiki.ros.org/catkin/Tutorials/create_a_workspace) on the ROS Wiki for help setting up a catkin workspace.

### Checking out the source code (wstool)

If you're using wstool, add this repository to your wstool workspace:

    wstool set marti_messages --git https://github.com/swri-robotics/marti_messages.git

### Checking out the source code (git)

If you're not using wstool, you can check out the repositories with git:

    git clone https://github.com/swri-robotics/marti_messages.git

### Installing dependencies and building

Install all of the dependencies using rosdep by running the following command from the root of your catkin workspace:

    rosdep install --from-paths src --ignore-src

Build the workspace with catkin\_make:

    catkin_make

