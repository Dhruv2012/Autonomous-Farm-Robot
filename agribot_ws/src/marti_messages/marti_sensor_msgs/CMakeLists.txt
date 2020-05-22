cmake_minimum_required(VERSION 2.8.3)
project(marti_sensor_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  geometry_msgs)

add_message_files(FILES
  Altitude.msg
  DifferentialMeasurement.msg
  DioPortState.msg
  DioRealTimeData.msg
  Direction.msg
  Exposure.msg
  Gyro.msg
  Velocity.msg
  WheelEncoder.msg
  WheelEncoderSet.msg
)

add_service_files(FILES
  SetExposure.srv
)

generate_messages(DEPENDENCIES
  geometry_msgs)

catkin_package(
  CATKIN_DEPENDS 
    message_runtime
    geometry_msgs
)
