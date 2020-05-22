cmake_minimum_required(VERSION 2.8.3)
project(marti_visualization_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  geometry_msgs
  sensor_msgs)

add_message_files(FILES
  TexturedMarker.msg
  TexturedMarkerArray.msg
)

generate_messages(DEPENDENCIES
  geometry_msgs
  sensor_msgs)

catkin_package(
  CATKIN_DEPENDS 
    message_runtime
    geometry_msgs 
    sensor_msgs
)
