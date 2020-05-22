; Auto-generated. Do not edit!


(cl:in-package marti_common_msgs-msg)


;//! \htmlinclude ServiceHeader.msg.html

(cl:defclass <ServiceHeader> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:integer
    :initform 0)
   (sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceHeader (<ServiceHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_common_msgs-msg:<ServiceHeader> is deprecated: use marti_common_msgs-msg:ServiceHeader instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ServiceHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:stamp-val is deprecated.  Use marti_common_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <ServiceHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:sequence-val is deprecated.  Use marti_common_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <ServiceHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:sender-val is deprecated.  Use marti_common_msgs-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ServiceHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:result-val is deprecated.  Use marti_common_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceHeader>) ostream)
  "Serializes a message object of type '<ServiceHeader>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceHeader>) istream)
  "Deserializes a message object of type '<ServiceHeader>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceHeader>)))
  "Returns string type for a message object of type '<ServiceHeader>"
  "marti_common_msgs/ServiceHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceHeader)))
  "Returns string type for a message object of type 'ServiceHeader"
  "marti_common_msgs/ServiceHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceHeader>)))
  "Returns md5sum for a message object of type '<ServiceHeader>"
  "c9ecea07422007ad3a23c820ab38111a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceHeader)))
  "Returns md5sum for a message object of type 'ServiceHeader"
  "c9ecea07422007ad3a23c820ab38111a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceHeader>)))
  "Returns full string definition for message of type '<ServiceHeader>"
  (cl:format cl:nil "# This message contains all of the data filled in automatically by the service system~%# It is required in each request and response message to be named srv_header~%time stamp~%uint32 sequence~%string sender~%bool result # Used to indicate if the service request was successful or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceHeader)))
  "Returns full string definition for message of type 'ServiceHeader"
  (cl:format cl:nil "# This message contains all of the data filled in automatically by the service system~%# It is required in each request and response message to be named srv_header~%time stamp~%uint32 sequence~%string sender~%bool result # Used to indicate if the service request was successful or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceHeader>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'sender))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceHeader
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':sender (sender msg))
    (cl:cons ':result (result msg))
))
