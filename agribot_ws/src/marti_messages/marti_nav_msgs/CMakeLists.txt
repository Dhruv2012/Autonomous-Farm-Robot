cmake_minimum_required(VERSION 2.8.3)
project(marti_nav_msgs)

set(MSG_DEPS
  geographic_msgs
  geometry_msgs
  marti_common_msgs
  sensor_msgs
  std_msgs
)

set(BUILD_DEPS
  ${MSG_DEPS}
  message_generation
)

set(RUNTIME_DEPS
  ${MSG_DEPS}
  message_runtime
)

find_package(catkin REQUIRED COMPONENTS ${BUILD_DEPS})

add_message_files(FILES
  Command.msg
  GridMap.msg
  LeadVehicle.msg
  Obstacle.msg
  ObstacleArray.msg
  PathPlanning.msg
  Route.msg
  RouteArray.msg
  RouteOffset.msg
  RoutePoint.msg
  RoutePosition.msg
  RouteSpeed.msg
  RouteSpeedArray.msg
  TeleopState.msg
  TrackedObject.msg
  TrackedObjectArray.msg
  VehicleControl.msg
  Wgs84Sample.msg
)

add_service_files(FILES
  DeleteRoute.srv
  GetRoute.srv
  GetRouteList.srv
  PlanRoute.srv
  SaveRecordedRoute.srv
  SaveRoute.srv
  SetRoute.srv
  UpdateRouteMetadata.srv
)

generate_messages(DEPENDENCIES ${MSG_DEPS})

catkin_package(CATKIN_DEPENDS ${RUNTIME_DEPS})
