cmake_minimum_required(VERSION 2.8.3)
project(marti_common_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs)

add_message_files(FILES
  BoolStamped.msg
  ByteArrayStamped.msg
  DurationStamped.msg
  Float32Stamped.msg
  Float64Stamped.msg
  HealthStatus.msg
  Int16Stamped.msg
  Int32Stamped.msg
  Int64Stamped.msg
  Int8Stamped.msg
  KeyValue.msg
  KeyValueArray.msg
  Matrix3x3Stamped.msg
  ServiceHeader.msg
  StringArrayStamped.msg
  StringStamped.msg
  TimeStamped.msg
  UInt16Stamped.msg
  UInt32Stamped.msg
  UInt64Stamped.msg
  UInt8Stamped.msg
)

generate_messages(DEPENDENCIES
  std_msgs)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
    std_msgs
)
