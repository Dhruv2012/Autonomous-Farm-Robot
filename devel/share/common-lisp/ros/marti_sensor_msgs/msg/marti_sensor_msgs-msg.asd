
(cl:in-package :asdf)

(defsystem "marti_sensor_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Altitude" :depends-on ("_package_Altitude"))
    (:file "_package_Altitude" :depends-on ("_package"))
    (:file "DifferentialMeasurement" :depends-on ("_package_DifferentialMeasurement"))
    (:file "_package_DifferentialMeasurement" :depends-on ("_package"))
    (:file "DioPortState" :depends-on ("_package_DioPortState"))
    (:file "_package_DioPortState" :depends-on ("_package"))
    (:file "DioRealTimeData" :depends-on ("_package_DioRealTimeData"))
    (:file "_package_DioRealTimeData" :depends-on ("_package"))
    (:file "Direction" :depends-on ("_package_Direction"))
    (:file "_package_Direction" :depends-on ("_package"))
    (:file "Exposure" :depends-on ("_package_Exposure"))
    (:file "_package_Exposure" :depends-on ("_package"))
    (:file "Gyro" :depends-on ("_package_Gyro"))
    (:file "_package_Gyro" :depends-on ("_package"))
    (:file "Velocity" :depends-on ("_package_Velocity"))
    (:file "_package_Velocity" :depends-on ("_package"))
    (:file "WheelEncoder" :depends-on ("_package_WheelEncoder"))
    (:file "_package_WheelEncoder" :depends-on ("_package"))
    (:file "WheelEncoderSet" :depends-on ("_package_WheelEncoderSet"))
    (:file "_package_WheelEncoderSet" :depends-on ("_package"))
  ))