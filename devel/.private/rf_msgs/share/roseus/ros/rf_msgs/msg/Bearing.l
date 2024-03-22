;; Auto-generated. Do not edit!


(when (boundp 'rf_msgs::Bearing)
  (if (not (find-package "RF_MSGS"))
    (make-package "RF_MSGS"))
  (shadow 'Bearing (find-package "RF_MSGS")))
(unless (find-package "RF_MSGS::BEARING")
  (make-package "RF_MSGS::BEARING"))

(in-package "ROS")
;;//! \htmlinclude Bearing.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rf_msgs::Bearing
  :super ros::object
  :slots (_header _ap_id _txmac _n_tx _n_rx _seq _rssi _aoa ))

(defmethod rf_msgs::Bearing
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ap_id __ap_id) 0)
    ((:txmac __txmac) (make-array 0 :initial-element 0 :element-type :char))
    ((:n_tx __n_tx) 0)
    ((:n_rx __n_rx) 0)
    ((:seq __seq) 0)
    ((:rssi __rssi) (make-array 0 :initial-element 0 :element-type :integer))
    ((:aoa __aoa) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ap_id (round __ap_id))
   (setq _txmac __txmac)
   (setq _n_tx (round __n_tx))
   (setq _n_rx (round __n_rx))
   (setq _seq (round __seq))
   (setq _rssi __rssi)
   (setq _aoa __aoa)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ap_id
   (&optional __ap_id)
   (if __ap_id (setq _ap_id __ap_id)) _ap_id)
  (:txmac
   (&optional __txmac)
   (if __txmac (setq _txmac __txmac)) _txmac)
  (:n_tx
   (&optional __n_tx)
   (if __n_tx (setq _n_tx __n_tx)) _n_tx)
  (:n_rx
   (&optional __n_rx)
   (if __n_rx (setq _n_rx __n_rx)) _n_rx)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:aoa
   (&optional __aoa)
   (if __aoa (setq _aoa __aoa)) _aoa)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _ap_id
    1
    ;; uint8[] _txmac
    (* 1    (length _txmac)) 4
    ;; uint8 _n_tx
    1
    ;; uint8 _n_rx
    1
    ;; uint32 _seq
    4
    ;; int32[] _rssi
    (* 4    (length _rssi)) 4
    ;; float64[] _aoa
    (* 8    (length _aoa)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _ap_id
       (write-byte _ap_id s)
     ;; uint8[] _txmac
     (write-long (length _txmac) s)
     (princ _txmac s)
     ;; uint8 _n_tx
       (write-byte _n_tx s)
     ;; uint8 _n_rx
       (write-byte _n_rx s)
     ;; uint32 _seq
       (write-long _seq s)
     ;; int32[] _rssi
     (write-long (length _rssi) s)
     (dotimes (i (length _rssi))
       (write-long (elt _rssi i) s)
       )
     ;; float64[] _aoa
     (write-long (length _aoa) s)
     (dotimes (i (length _aoa))
       (sys::poke (elt _aoa i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _ap_id
     (setq _ap_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _txmac
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _txmac (make-array n :element-type :char))
     (replace _txmac buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _n_tx
     (setq _n_tx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _n_rx
     (setq _n_rx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _rssi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rssi (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rssi i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _aoa
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aoa (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _aoa i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get rf_msgs::Bearing :md5sum-) "967f0be24bd6e9e8f5c88973721bda70")
(setf (get rf_msgs::Bearing :datatype-) "rf_msgs/Bearing")
(setf (get rf_msgs::Bearing :definition-)
      "# This message contains the angle of arrival measurements computed
# from a particular Wifi message. See Wifi.msg for more details

Header header

uint8 ap_id # AP identifier which collected the CSI data, sequential starting from 0, up to (total number of AP's - 1)
uint8[] txmac
uint8 n_tx # number of antennas on the transmitter antenna
uint8 n_rx # number of antennas on the receiver antenna
uint32 seq # packet number

# RSSI of packet
int32[] rssi

# angle of arrival values computed from n_tx antennas, this must be set
float64[] aoa # AoA in the coordinates of wifi radio

# (CURRENTLY UNUSED) angle of arrival values computed at n_rx antennas
# float64[] aod
# float64[] aod_local
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rf_msgs/Bearing "967f0be24bd6e9e8f5c88973721bda70")


