; Auto-generated. Do not edit!


(cl:in-package rf_msgs-msg)


;//! \htmlinclude Station.msg.html

(cl:defclass <Station> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mac
    :reader mac
    :initarg :mac
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0))
   (channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:integer
    :initform 0))
)

(cl:defclass Station (<Station>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Station>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Station)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rf_msgs-msg:<Station> is deprecated: use rf_msgs-msg:Station instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:header-val is deprecated.  Use rf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mac-val :lambda-list '(m))
(cl:defmethod mac-val ((m <Station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:mac-val is deprecated.  Use rf_msgs-msg:mac instead.")
  (mac m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <Station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:channel-val is deprecated.  Use rf_msgs-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <Station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:rssi-val is deprecated.  Use rf_msgs-msg:rssi instead.")
  (rssi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Station>) ostream)
  "Serializes a message object of type '<Station>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'mac))
  (cl:let* ((signed (cl:slot-value msg 'channel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rssi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Station>) istream)
  "Deserializes a message object of type '<Station>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'mac) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'mac)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rssi) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Station>)))
  "Returns string type for a message object of type '<Station>"
  "rf_msgs/Station")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Station)))
  "Returns string type for a message object of type 'Station"
  "rf_msgs/Station")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Station>)))
  "Returns md5sum for a message object of type '<Station>"
  "10b6cc24ce2106ac7952f0affaba2507")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Station)))
  "Returns md5sum for a message object of type 'Station"
  "10b6cc24ce2106ac7952f0affaba2507")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Station>)))
  "Returns full string definition for message of type '<Station>"
  (cl:format cl:nil "#basic object which can be detected by wireless sensing.~%~%Header header~%~%#mac address~%uint8[6] mac~%~%#wifi channel on which it is broadcast~%int32 channel~%~%#measured rssi~%int32 rssi~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Station)))
  "Returns full string definition for message of type 'Station"
  (cl:format cl:nil "#basic object which can be detected by wireless sensing.~%~%Header header~%~%#mac address~%uint8[6] mac~%~%#wifi channel on which it is broadcast~%int32 channel~%~%#measured rssi~%int32 rssi~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Station>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'mac) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Station>))
  "Converts a ROS message object to a list"
  (cl:list 'Station
    (cl:cons ':header (header msg))
    (cl:cons ':mac (mac msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':rssi (rssi msg))
))
