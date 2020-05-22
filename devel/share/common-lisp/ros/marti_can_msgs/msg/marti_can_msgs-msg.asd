
(cl:in-package :asdf)

(defsystem "marti_can_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CanFrame" :depends-on ("_package_CanFrame"))
    (:file "_package_CanFrame" :depends-on ("_package"))
  ))