
(cl:in-package :asdf)

(defsystem "marti_nav_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :marti_nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DeleteRoute" :depends-on ("_package_DeleteRoute"))
    (:file "_package_DeleteRoute" :depends-on ("_package"))
    (:file "GetRoute" :depends-on ("_package_GetRoute"))
    (:file "_package_GetRoute" :depends-on ("_package"))
    (:file "GetRouteList" :depends-on ("_package_GetRouteList"))
    (:file "_package_GetRouteList" :depends-on ("_package"))
    (:file "PlanRoute" :depends-on ("_package_PlanRoute"))
    (:file "_package_PlanRoute" :depends-on ("_package"))
    (:file "SaveRecordedRoute" :depends-on ("_package_SaveRecordedRoute"))
    (:file "_package_SaveRecordedRoute" :depends-on ("_package"))
    (:file "SaveRoute" :depends-on ("_package_SaveRoute"))
    (:file "_package_SaveRoute" :depends-on ("_package"))
    (:file "SetRoute" :depends-on ("_package_SetRoute"))
    (:file "_package_SetRoute" :depends-on ("_package"))
    (:file "UpdateRouteMetadata" :depends-on ("_package_UpdateRouteMetadata"))
    (:file "_package_UpdateRouteMetadata" :depends-on ("_package"))
  ))