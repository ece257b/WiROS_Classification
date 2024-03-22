; Auto-generated. Do not edit!


(cl:in-package rf_msgs-msg)


;//! \htmlinclude AccessPoints.msg.html

(cl:defclass <AccessPoints> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (aps
    :reader aps
    :initarg :aps
    :type (cl:vector rf_msgs-msg:Station)
   :initform (cl:make-array 0 :element-type 'rf_msgs-msg:Station :initial-element (cl:make-instance 'rf_msgs-msg:Station))))
)

(cl:defclass AccessPoints (<AccessPoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccessPoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccessPoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rf_msgs-msg:<AccessPoints> is deprecated: use rf_msgs-msg:AccessPoints instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AccessPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:header-val is deprecated.  Use rf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'aps-val :lambda-list '(m))
(cl:defmethod aps-val ((m <AccessPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:aps-val is deprecated.  Use rf_msgs-msg:aps instead.")
  (aps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccessPoints>) ostream)
  "Serializes a message object of type '<AccessPoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'aps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'aps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccessPoints>) istream)
  "Deserializes a message object of type '<AccessPoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'aps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'aps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rf_msgs-msg:Station))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccessPoints>)))
  "Returns string type for a message object of type '<AccessPoints>"
  "rf_msgs/AccessPoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccessPoints)))
  "Returns string type for a message object of type 'AccessPoints"
  "rf_msgs/AccessPoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccessPoints>)))
  "Returns md5sum for a message object of type '<AccessPoints>"
  "abf4bd98be28b4420acdb573e4838a47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccessPoints)))
  "Returns md5sum for a message object of type 'AccessPoints"
  "abf4bd98be28b4420acdb573e4838a47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccessPoints>)))
  "Returns full string definition for message of type '<AccessPoints>"
  (cl:format cl:nil "#A list of stations.~%~%Header header~%Station[] aps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rf_msgs/Station~%#basic object which can be detected by wireless sensing.~%~%Header header~%~%#mac address~%uint8[6] mac~%~%#wifi channel on which it is broadcast~%int32 channel~%~%#measured rssi~%int32 rssi~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccessPoints)))
  "Returns full string definition for message of type 'AccessPoints"
  (cl:format cl:nil "#A list of stations.~%~%Header header~%Station[] aps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rf_msgs/Station~%#basic object which can be detected by wireless sensing.~%~%Header header~%~%#mac address~%uint8[6] mac~%~%#wifi channel on which it is broadcast~%int32 channel~%~%#measured rssi~%int32 rssi~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccessPoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'aps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccessPoints>))
  "Converts a ROS message object to a list"
  (cl:list 'AccessPoints
    (cl:cons ':header (header msg))
    (cl:cons ':aps (aps msg))
))
