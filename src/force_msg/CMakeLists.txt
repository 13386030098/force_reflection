cmake_minimum_required(VERSION 2.8.3)
project(force_msg)

## Compile as C++11, supported in ROS Kinetic and newer
 add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  std_msgs
  message_generation
)
add_message_files(
   FILES
   Force.msg
 )

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   geometry_msgs
   std_msgs
 )


catkin_package(
  INCLUDE_DIRS include
#  LIBRARIES davinci_msg
  CATKIN_DEPENDS geometry_msgs roscpp rospy std_msgs
  message_runtime
)


include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

