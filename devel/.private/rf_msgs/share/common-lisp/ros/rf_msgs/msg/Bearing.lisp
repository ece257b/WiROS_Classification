; Auto-generated. Do not edit!


(cl:in-package rf_msgs-msg)


;//! \htmlinclude Bearing.msg.html

(cl:defclass <Bearing> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ap_id
    :reader ap_id
    :initarg :ap_id
    :type cl:fixnum
    :initform 0)
   (txmac
    :reader txmac
    :initarg :txmac
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (n_tx
    :reader n_tx
    :initarg :n_tx
    :type cl:fixnum
    :initform 0)
   (n_rx
    :reader n_rx
    :initarg :n_rx
    :type cl:fixnum
    :initform 0)
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (rssi
    :reader rssi
    :initarg :rssi
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (aoa
    :reader aoa
    :initarg :aoa
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Bearing (<Bearing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bearing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bearing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rf_msgs-msg:<Bearing> is deprecated: use rf_msgs-msg:Bearing instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Bearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:header-val is deprecated.  Use rf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ap_id-val :lambda-list '(m))
(cl:defmethod ap_id-val ((m <Bearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:ap_id-val is deprecated.  Use rf_msgs-msg:ap_id instead.")
  (ap_id m))

(cl:ensure-generic-function 'txmac-val :lambda-list '(m))
(cl:defmethod txmac-val ((m <Bearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:txmac-val is deprecated.  Use rf_msgs-msg:txmac instead.")
  (txmac m))

(cl:ensure-generic-function 'n_tx-val :lambda-list '(m))
(cl:defmethod n_tx-val ((m <Bearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:n_tx-val is deprecated.  Use rf_msgs-msg:n_tx instead.")
  (n_tx m))

(cl:ensure-generic-function 'n_rx-val :lambda-list '(m))
(cl:defmethod n_rx-val ((m <Bearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:n_rx-val is deprecated.  Use rf_msgs-msg:n_rx instead.")
  (n_rx m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <Bearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:seq-val is deprecated.  Use rf_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <Bearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:rssi-val is deprecated.  Use rf_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'aoa-val :lambda-list '(m))
(cl:defmethod aoa-val ((m <Bearing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:aoa-val is deprecated.  Use rf_msgs-msg:aoa instead.")
  (aoa m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bearing>) ostream)
  "Serializes a message object of type '<Bearing>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ap_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'txmac))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'txmac))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_tx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_rx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rssi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'rssi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'aoa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'aoa))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bearing>) istream)
  "Deserializes a message object of type '<Bearing>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ap_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'txmac) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'txmac)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_tx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_rx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rssi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rssi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'aoa) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'aoa)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bearing>)))
  "Returns string type for a message object of type '<Bearing>"
  "rf_msgs/Bearing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bearing)))
  "Returns string type for a message object of type 'Bearing"
  "rf_msgs/Bearing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bearing>)))
  "Returns md5sum for a message object of type '<Bearing>"
  "967f0be24bd6e9e8f5c88973721bda70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bearing)))
  "Returns md5sum for a message object of type 'Bearing"
  "967f0be24bd6e9e8f5c88973721bda70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bearing>)))
  "Returns full string definition for message of type '<Bearing>"
  (cl:format cl:nil "# This message contains the angle of arrival measurements computed~%# from a particular Wifi message. See Wifi.msg for more details~%~%Header header~%~%uint8 ap_id # AP identifier which collected the CSI data, sequential starting from 0, up to (total number of AP's - 1)~%uint8[] txmac~%uint8 n_tx # number of antennas on the transmitter antenna~%uint8 n_rx # number of antennas on the receiver antenna~%uint32 seq # packet number~%~%# RSSI of packet~%int32[] rssi~%~%# angle of arrival values computed from n_tx antennas, this must be set~%float64[] aoa # AoA in the coordinates of wifi radio~%~%# (CURRENTLY UNUSED) angle of arrival values computed at n_rx antennas~%# float64[] aod~%# float64[] aod_local~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bearing)))
  "Returns full string definition for message of type 'Bearing"
  (cl:format cl:nil "# This message contains the angle of arrival measurements computed~%# from a particular Wifi message. See Wifi.msg for more details~%~%Header header~%~%uint8 ap_id # AP identifier which collected the CSI data, sequential starting from 0, up to (total number of AP's - 1)~%uint8[] txmac~%uint8 n_tx # number of antennas on the transmitter antenna~%uint8 n_rx # number of antennas on the receiver antenna~%uint32 seq # packet number~%~%# RSSI of packet~%int32[] rssi~%~%# angle of arrival values computed from n_tx antennas, this must be set~%float64[] aoa # AoA in the coordinates of wifi radio~%~%# (CURRENTLY UNUSED) angle of arrival values computed at n_rx antennas~%# float64[] aod~%# float64[] aod_local~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bearing>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'txmac) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rssi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'aoa) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bearing>))
  "Converts a ROS message object to a list"
  (cl:list 'Bearing
    (cl:cons ':header (header msg))
    (cl:cons ':ap_id (ap_id msg))
    (cl:cons ':txmac (txmac msg))
    (cl:cons ':n_tx (n_tx msg))
    (cl:cons ':n_rx (n_rx msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':aoa (aoa msg))
))
