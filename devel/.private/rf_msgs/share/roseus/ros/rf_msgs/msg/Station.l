;; Auto-generated. Do not edit!


(when (boundp 'rf_msgs::Station)
  (if (not (find-package "RF_MSGS"))
    (make-package "RF_MSGS"))
  (shadow 'Station (find-package "RF_MSGS")))
(unless (find-package "RF_MSGS::STATION")
  (make-package "RF_MSGS::STATION"))

(in-package "ROS")
;;//! \htmlinclude Station.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rf_msgs::Station
  :super ros::object
  :slots (_header _mac _channel _rssi ))

(defmethod rf_msgs::Station
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mac __mac) (make-array 6 :initial-element 0 :element-type :char))
    ((:channel __channel) 0)
    ((:rssi __rssi) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mac __mac)
   (setq _channel (round __channel))
   (setq _rssi (round __rssi))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mac
   (&optional __mac)
   (if __mac (setq _mac __mac)) _mac)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[6] _mac
    (* 1    6)
    ;; int32 _channel
    4
    ;; int32 _rssi
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[6] _mac
     (princ _mac s)
     ;; int32 _channel
       (write-long _channel s)
     ;; int32 _rssi
       (write-long _rssi s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[6] _mac
   (setq _mac (make-array 6 :element-type :char))
   (replace _mac buf :start2 ptr-) (incf ptr- 6)
   ;; int32 _channel
     (setq _channel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rssi
     (setq _rssi (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rf_msgs::Station :md5sum-) "10b6cc24ce2106ac7952f0affaba2507")
(setf (get rf_msgs::Station :datatype-) "rf_msgs/Station")
(setf (get rf_msgs::Station :definition-)
      "#basic object which can be detected by wireless sensing.

Header header

#mac address
uint8[6] mac

#wifi channel on which it is broadcast
int32 channel

#measured rssi
int32 rssi
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



(provide :rf_msgs/Station "10b6cc24ce2106ac7952f0affaba2507")


