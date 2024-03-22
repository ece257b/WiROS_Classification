; Auto-generated. Do not edit!


(cl:in-package csi_tools-srv)


;//! \htmlinclude SaveChannel-request.msg.html

(cl:defclass <SaveChannel-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (num_channels
    :reader num_channels
    :initarg :num_channels
    :type cl:integer
    :initform 0)
   (mac
    :reader mac
    :initarg :mac
    :type cl:string
    :initform ""))
)

(cl:defclass SaveChannel-request (<SaveChannel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveChannel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveChannel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name csi_tools-srv:<SaveChannel-request> is deprecated: use csi_tools-srv:SaveChannel-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SaveChannel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader csi_tools-srv:filename-val is deprecated.  Use csi_tools-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'num_channels-val :lambda-list '(m))
(cl:defmethod num_channels-val ((m <SaveChannel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader csi_tools-srv:num_channels-val is deprecated.  Use csi_tools-srv:num_channels instead.")
  (num_channels m))

(cl:ensure-generic-function 'mac-val :lambda-list '(m))
(cl:defmethod mac-val ((m <SaveChannel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader csi_tools-srv:mac-val is deprecated.  Use csi_tools-srv:mac instead.")
  (mac m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveChannel-request>) ostream)
  "Serializes a message object of type '<SaveChannel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:let* ((signed (cl:slot-value msg 'num_channels)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mac))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mac))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveChannel-request>) istream)
  "Deserializes a message object of type '<SaveChannel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_channels) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mac) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mac) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveChannel-request>)))
  "Returns string type for a service object of type '<SaveChannel-request>"
  "csi_tools/SaveChannelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveChannel-request)))
  "Returns string type for a service object of type 'SaveChannel-request"
  "csi_tools/SaveChannelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveChannel-request>)))
  "Returns md5sum for a message object of type '<SaveChannel-request>"
  "e4f28584a2301cb8628c003709fe824c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveChannel-request)))
  "Returns md5sum for a message object of type 'SaveChannel-request"
  "e4f28584a2301cb8628c003709fe824c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveChannel-request>)))
  "Returns full string definition for message of type '<SaveChannel-request>"
  (cl:format cl:nil "#set these values to -1 to keep the current configuration~%string filename~%int32 num_channels~%#leave as '' for no mac filter~%string mac~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveChannel-request)))
  "Returns full string definition for message of type 'SaveChannel-request"
  (cl:format cl:nil "#set these values to -1 to keep the current configuration~%string filename~%int32 num_channels~%#leave as '' for no mac filter~%string mac~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveChannel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     4
     4 (cl:length (cl:slot-value msg 'mac))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveChannel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveChannel-request
    (cl:cons ':filename (filename msg))
    (cl:cons ':num_channels (num_channels msg))
    (cl:cons ':mac (mac msg))
))
;//! \htmlinclude SaveChannel-response.msg.html

(cl:defclass <SaveChannel-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass SaveChannel-response (<SaveChannel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveChannel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveChannel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name csi_tools-srv:<SaveChannel-response> is deprecated: use csi_tools-srv:SaveChannel-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SaveChannel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader csi_tools-srv:result-val is deprecated.  Use csi_tools-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveChannel-response>) ostream)
  "Serializes a message object of type '<SaveChannel-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveChannel-response>) istream)
  "Deserializes a message object of type '<SaveChannel-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveChannel-response>)))
  "Returns string type for a service object of type '<SaveChannel-response>"
  "csi_tools/SaveChannelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveChannel-response)))
  "Returns string type for a service object of type 'SaveChannel-response"
  "csi_tools/SaveChannelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveChannel-response>)))
  "Returns md5sum for a message object of type '<SaveChannel-response>"
  "e4f28584a2301cb8628c003709fe824c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveChannel-response)))
  "Returns md5sum for a message object of type 'SaveChannel-response"
  "e4f28584a2301cb8628c003709fe824c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveChannel-response>)))
  "Returns full string definition for message of type '<SaveChannel-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveChannel-response)))
  "Returns full string definition for message of type 'SaveChannel-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveChannel-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveChannel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveChannel-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveChannel)))
  'SaveChannel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveChannel)))
  'SaveChannel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveChannel)))
  "Returns string type for a service object of type '<SaveChannel>"
  "csi_tools/SaveChannel")