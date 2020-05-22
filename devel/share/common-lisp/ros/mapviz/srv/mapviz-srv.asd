
(cl:in-package :asdf)

(defsystem "mapviz-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :marti_common_msgs-msg
)
  :components ((:file "_package")
    (:file "AddMapvizDisplay" :depends-on ("_package_AddMapvizDisplay"))
    (:file "_package_AddMapvizDisplay" :depends-on ("_package"))
  ))