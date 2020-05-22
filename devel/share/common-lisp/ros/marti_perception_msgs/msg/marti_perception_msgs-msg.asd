
(cl:in-package :asdf)

(defsystem "marti_perception_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PedestrianImageID" :depends-on ("_package_PedestrianImageID"))
    (:file "_package_PedestrianImageID" :depends-on ("_package"))
  ))