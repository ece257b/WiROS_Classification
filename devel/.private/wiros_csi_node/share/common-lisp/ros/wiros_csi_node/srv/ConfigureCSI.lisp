; Auto-generated. Do not edit!


(cl:in-package wiros_csi_node-srv)


;//! \htmlinclude ConfigureCSI-request.msg.html

(cl:defclass <ConfigureCSI-request> (roslisp-msg-protocol:ros-message)
  ((chan
    :reader chan
    :initarg :chan
    :type cl:integer
    :initform 0)
   (bw
    :reader bw
    :initarg :bw
    :type cl:integer
    :initform 0)
   (mac_filter
    :reader mac_filter
    :initarg :mac_filter
    :type cl:string
    :initform ""))
)

(cl:defclass ConfigureCSI-request (<ConfigureCSI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigureCSI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigureCSI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wiros_csi_node-srv:<ConfigureCSI-request> is deprecated: use wiros_csi_node-srv:ConfigureCSI-request instead.")))

(cl:ensure-generic-function 'chan-val :lambda-list '(m))
(cl:defmethod chan-val ((m <ConfigureCSI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wiros_csi_node-srv:chan-val is deprecated.  Use wiros_csi_node-srv:chan instead.")
  (chan m))

(cl:ensure-generic-function 'bw-val :lambda-list '(m))
(cl:defmethod bw-val ((m <ConfigureCSI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wiros_csi_node-srv:bw-val is deprecated.  Use wiros_csi_node-srv:bw instead.")
  (bw m))

(cl:ensure-generic-function 'mac_filter-val :lambda-list '(m))
(cl:defmethod mac_filter-val ((m <ConfigureCSI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wiros_csi_node-srv:mac_filter-val is deprecated.  Use wiros_csi_node-srv:mac_filter instead.")
  (mac_filter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigureCSI-request>) ostream)
  "Serializes a message object of type '<ConfigureCSI-request>"
  (cl:let* ((signed (cl:slot-value msg 'chan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mac_filter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mac_filter))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigureCSI-request>) istream)
  "Deserializes a message object of type '<ConfigureCSI-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chan) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mac_filter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mac_filter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigureCSI-request>)))
  "Returns string type for a service object of type '<ConfigureCSI-request>"
  "wiros_csi_node/ConfigureCSIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureCSI-request)))
  "Returns string type for a service object of type 'ConfigureCSI-request"
  "wiros_csi_node/ConfigureCSIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigureCSI-request>)))
  "Returns md5sum for a message object of type '<ConfigureCSI-request>"
  "37e074cc5fb8a82d0a146e413ef0dc09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigureCSI-request)))
  "Returns md5sum for a message object of type 'ConfigureCSI-request"
  "37e074cc5fb8a82d0a146e413ef0dc09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigureCSI-request>)))
  "Returns full string definition for message of type '<ConfigureCSI-request>"
  (cl:format cl:nil "#set these values to -1 to keep the current configuration~%int32 chan~%int32 bw~%~%#set to \"\" to keep current config~%string mac_filter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigureCSI-request)))
  "Returns full string definition for message of type 'ConfigureCSI-request"
  (cl:format cl:nil "#set these values to -1 to keep the current configuration~%int32 chan~%int32 bw~%~%#set to \"\" to keep current config~%string mac_filter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigureCSI-request>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'mac_filter))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigureCSI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigureCSI-request
    (cl:cons ':chan (chan msg))
    (cl:cons ':bw (bw msg))
    (cl:cons ':mac_filter (mac_filter msg))
))
;//! \htmlinclude ConfigureCSI-response.msg.html

(cl:defclass <ConfigureCSI-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass ConfigureCSI-response (<ConfigureCSI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigureCSI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigureCSI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wiros_csi_node-srv:<ConfigureCSI-response> is deprecated: use wiros_csi_node-srv:ConfigureCSI-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ConfigureCSI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wiros_csi_node-srv:result-val is deprecated.  Use wiros_csi_node-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigureCSI-response>) ostream)
  "Serializes a message object of type '<ConfigureCSI-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigureCSI-response>) istream)
  "Deserializes a message object of type '<ConfigureCSI-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigureCSI-response>)))
  "Returns string type for a service object of type '<ConfigureCSI-response>"
  "wiros_csi_node/ConfigureCSIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureCSI-response)))
  "Returns string type for a service object of type 'ConfigureCSI-response"
  "wiros_csi_node/ConfigureCSIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigureCSI-response>)))
  "Returns md5sum for a message object of type '<ConfigureCSI-response>"
  "37e074cc5fb8a82d0a146e413ef0dc09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigureCSI-response)))
  "Returns md5sum for a message object of type 'ConfigureCSI-response"
  "37e074cc5fb8a82d0a146e413ef0dc09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigureCSI-response>)))
  "Returns full string definition for message of type '<ConfigureCSI-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigureCSI-response)))
  "Returns full string definition for message of type 'ConfigureCSI-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigureCSI-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigureCSI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigureCSI-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConfigureCSI)))
  'ConfigureCSI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConfigureCSI)))
  'ConfigureCSI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigureCSI)))
  "Returns string type for a service object of type '<ConfigureCSI>"
  "wiros_csi_node/ConfigureCSI")