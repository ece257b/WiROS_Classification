; Auto-generated. Do not edit!


(cl:in-package rf_msgs-msg)


;//! \htmlinclude Wifi.msg.html

(cl:defclass <Wifi> (roslisp-msg-protocol:ros-message)
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
   (chan
    :reader chan
    :initarg :chan
    :type cl:fixnum
    :initform 0)
   (n_sub
    :reader n_sub
    :initarg :n_sub
    :type cl:integer
    :initform 0)
   (n_rows
    :reader n_rows
    :initarg :n_rows
    :type cl:fixnum
    :initform 0)
   (n_cols
    :reader n_cols
    :initarg :n_cols
    :type cl:fixnum
    :initform 0)
   (bw
    :reader bw
    :initarg :bw
    :type cl:fixnum
    :initform 0)
   (mcs
    :reader mcs
    :initarg :mcs
    :type cl:fixnum
    :initform 0)
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:integer
    :initform 0)
   (fc
    :reader fc
    :initarg :fc
    :type cl:integer
    :initform 0)
   (seq_num
    :reader seq_num
    :initarg :seq_num
    :type cl:integer
    :initform 0)
   (csi_real
    :reader csi_real
    :initarg :csi_real
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (csi_imag
    :reader csi_imag
    :initarg :csi_imag
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rx_id
    :reader rx_id
    :initarg :rx_id
    :type cl:string
    :initform "")
   (msg_id
    :reader msg_id
    :initarg :msg_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Wifi (<Wifi>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wifi>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wifi)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rf_msgs-msg:<Wifi> is deprecated: use rf_msgs-msg:Wifi instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:header-val is deprecated.  Use rf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ap_id-val :lambda-list '(m))
(cl:defmethod ap_id-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:ap_id-val is deprecated.  Use rf_msgs-msg:ap_id instead.")
  (ap_id m))

(cl:ensure-generic-function 'txmac-val :lambda-list '(m))
(cl:defmethod txmac-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:txmac-val is deprecated.  Use rf_msgs-msg:txmac instead.")
  (txmac m))

(cl:ensure-generic-function 'chan-val :lambda-list '(m))
(cl:defmethod chan-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:chan-val is deprecated.  Use rf_msgs-msg:chan instead.")
  (chan m))

(cl:ensure-generic-function 'n_sub-val :lambda-list '(m))
(cl:defmethod n_sub-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:n_sub-val is deprecated.  Use rf_msgs-msg:n_sub instead.")
  (n_sub m))

(cl:ensure-generic-function 'n_rows-val :lambda-list '(m))
(cl:defmethod n_rows-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:n_rows-val is deprecated.  Use rf_msgs-msg:n_rows instead.")
  (n_rows m))

(cl:ensure-generic-function 'n_cols-val :lambda-list '(m))
(cl:defmethod n_cols-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:n_cols-val is deprecated.  Use rf_msgs-msg:n_cols instead.")
  (n_cols m))

(cl:ensure-generic-function 'bw-val :lambda-list '(m))
(cl:defmethod bw-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:bw-val is deprecated.  Use rf_msgs-msg:bw instead.")
  (bw m))

(cl:ensure-generic-function 'mcs-val :lambda-list '(m))
(cl:defmethod mcs-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:mcs-val is deprecated.  Use rf_msgs-msg:mcs instead.")
  (mcs m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:rssi-val is deprecated.  Use rf_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'fc-val :lambda-list '(m))
(cl:defmethod fc-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:fc-val is deprecated.  Use rf_msgs-msg:fc instead.")
  (fc m))

(cl:ensure-generic-function 'seq_num-val :lambda-list '(m))
(cl:defmethod seq_num-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:seq_num-val is deprecated.  Use rf_msgs-msg:seq_num instead.")
  (seq_num m))

(cl:ensure-generic-function 'csi_real-val :lambda-list '(m))
(cl:defmethod csi_real-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:csi_real-val is deprecated.  Use rf_msgs-msg:csi_real instead.")
  (csi_real m))

(cl:ensure-generic-function 'csi_imag-val :lambda-list '(m))
(cl:defmethod csi_imag-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:csi_imag-val is deprecated.  Use rf_msgs-msg:csi_imag instead.")
  (csi_imag m))

(cl:ensure-generic-function 'rx_id-val :lambda-list '(m))
(cl:defmethod rx_id-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:rx_id-val is deprecated.  Use rf_msgs-msg:rx_id instead.")
  (rx_id m))

(cl:ensure-generic-function 'msg_id-val :lambda-list '(m))
(cl:defmethod msg_id-val ((m <Wifi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rf_msgs-msg:msg_id-val is deprecated.  Use rf_msgs-msg:msg_id instead.")
  (msg_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wifi>) ostream)
  "Serializes a message object of type '<Wifi>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ap_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'txmac))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'txmac))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chan)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_sub)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_sub)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'n_sub)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'n_sub)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_cols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcs)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rssi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq_num)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'csi_real))))
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
   (cl:slot-value msg 'csi_real))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'csi_imag))))
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
   (cl:slot-value msg 'csi_imag))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rx_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rx_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wifi>) istream)
  "Deserializes a message object of type '<Wifi>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chan)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_sub)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_sub)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'n_sub)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'n_sub)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_cols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcs)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rssi) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq_num)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'csi_real) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'csi_real)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'csi_imag) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'csi_imag)))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rx_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rx_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wifi>)))
  "Returns string type for a message object of type '<Wifi>"
  "rf_msgs/Wifi")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wifi)))
  "Returns string type for a message object of type 'Wifi"
  "rf_msgs/Wifi")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wifi>)))
  "Returns md5sum for a message object of type '<Wifi>"
  "c6b3816e58324f4c826cc5e2cd4f2f3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wifi)))
  "Returns md5sum for a message object of type 'Wifi"
  "c6b3816e58324f4c826cc5e2cd4f2f3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wifi>)))
  "Returns full string definition for message of type '<Wifi>"
  (cl:format cl:nil "# This message accepts data from a WiFi access point for us in ~%# robotics applications. The core data point is CSI, the channel~%# state information. ~%~%# CSI matrix is n_sub x n_rows x n_cols~%~%Header header~%~%uint8 ap_id # access point collecting the CSI~%uint8[] txmac~%~%uint8 chan # channel number~%~%uint32 n_sub # number of subcarriers~%uint8 n_rows # number of rows for the CSI matrix, generally the number of RX antenna~%uint8 n_cols # number of columns, generally the number of TX antenna~%~%# bandwidth of the signal, can be 20, 40 or 80 MHz, ~%# the number of subcarriers are affected by this numbers~%uint8 bw ~%~%# the number of spatial channels. ~%# Fewer than n_cols means the columns index greater than number of ~%# spatial channels will be zero~%uint8 mcs ~%~%int32 rssi # received signal strength across \"n_rows\" antennas~%~%uint32 fc # packet type byte~%uint32 seq_num # packet number~%~%float64[] csi_real # channel state information - real part~%float64[] csi_imag # channel state information - complex part~%~%string rx_id #flag of receiver~%~%uint32 msg_id #realtime msg for debug~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wifi)))
  "Returns full string definition for message of type 'Wifi"
  (cl:format cl:nil "# This message accepts data from a WiFi access point for us in ~%# robotics applications. The core data point is CSI, the channel~%# state information. ~%~%# CSI matrix is n_sub x n_rows x n_cols~%~%Header header~%~%uint8 ap_id # access point collecting the CSI~%uint8[] txmac~%~%uint8 chan # channel number~%~%uint32 n_sub # number of subcarriers~%uint8 n_rows # number of rows for the CSI matrix, generally the number of RX antenna~%uint8 n_cols # number of columns, generally the number of TX antenna~%~%# bandwidth of the signal, can be 20, 40 or 80 MHz, ~%# the number of subcarriers are affected by this numbers~%uint8 bw ~%~%# the number of spatial channels. ~%# Fewer than n_cols means the columns index greater than number of ~%# spatial channels will be zero~%uint8 mcs ~%~%int32 rssi # received signal strength across \"n_rows\" antennas~%~%uint32 fc # packet type byte~%uint32 seq_num # packet number~%~%float64[] csi_real # channel state information - real part~%float64[] csi_imag # channel state information - complex part~%~%string rx_id #flag of receiver~%~%uint32 msg_id #realtime msg for debug~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wifi>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'txmac) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4
     1
     1
     1
     1
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'csi_real) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'csi_imag) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'rx_id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wifi>))
  "Converts a ROS message object to a list"
  (cl:list 'Wifi
    (cl:cons ':header (header msg))
    (cl:cons ':ap_id (ap_id msg))
    (cl:cons ':txmac (txmac msg))
    (cl:cons ':chan (chan msg))
    (cl:cons ':n_sub (n_sub msg))
    (cl:cons ':n_rows (n_rows msg))
    (cl:cons ':n_cols (n_cols msg))
    (cl:cons ':bw (bw msg))
    (cl:cons ':mcs (mcs msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':fc (fc msg))
    (cl:cons ':seq_num (seq_num msg))
    (cl:cons ':csi_real (csi_real msg))
    (cl:cons ':csi_imag (csi_imag msg))
    (cl:cons ':rx_id (rx_id msg))
    (cl:cons ':msg_id (msg_id msg))
))
