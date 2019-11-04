cmake_minimum_required(VERSION 2.8.3)
project(reflection)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  force_msg
)


catkin_package(
#  INCLUDE_DIRS include

)

include_directories(
  "include/reflection"
  ${catkin_INCLUDE_DIRS}
  "/home/zzz/force_reflection/src/reflection/include/reflection"
)
add_executable(reflection src/reflections.cpp)
target_link_libraries(reflection  ${catkin_LIBRARIES} ${Boost_LIBRARIES} "/usr/lib/libdhd.so.3" "/usr/lib/libdrd.so.3")


