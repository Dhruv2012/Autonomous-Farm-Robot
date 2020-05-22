
(cl:in-package :asdf)

(defsystem "marti_status_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ChronyTrackingStatus" :depends-on ("_package_ChronyTrackingStatus"))
    (:file "_package_ChronyTrackingStatus" :depends-on ("_package"))
  ))