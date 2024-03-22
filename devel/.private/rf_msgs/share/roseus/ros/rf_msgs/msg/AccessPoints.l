;; Auto-generated. Do not edit!


(when (boundp 'rf_msgs::AccessPoints)
  (if (not (find-package "RF_MSGS"))
    (make-package "RF_MSGS"))
  (shadow 'AccessPoints (find-package "RF_MSGS")))
(unless (find-package "RF_MSGS::ACCESSPOINTS")
  (make-package "RF_MSGS::ACCESSPOINTS"))

(in-package "ROS")
;;//! \htmlinclude AccessPoints.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rf_msgs::AccessPoints
  :super ros::object
  :slots (_header _aps ))

(defmethod rf_msgs::AccessPoints
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:aps __aps) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _aps __aps)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:aps
   (&rest __aps)
   (if (keywordp (car __aps))
       (send* _aps __aps)
     (progn
       (if __aps (setq _aps (car __aps)))
       _aps)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rf_msgs/Station[] _aps
    (apply #'+ (send-all _aps :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rf_msgs/Station[] _aps
     (write-long (length _aps) s)
     (dolist (elem _aps)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rf_msgs/Station[] _aps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aps (let (r) (dotimes (i n) (push (instance rf_msgs::Station :init) r)) r))
     (dolist (elem- _aps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rf_msgs::AccessPoints :md5sum-) "abf4bd98be28b4420acdb573e4838a47")
(setf (get rf_msgs::AccessPoints :datatype-) "rf_msgs/AccessPoints")
(setf (get rf_msgs::AccessPoints :definition-)
      "#A list of stations.

Header header
Station[] aps
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

================================================================================
MSG: rf_msgs/Station
#basic object which can be detected by wireless sensing.

Header header

#mac address
uint8[6] mac

#wifi channel on which it is broadcast
int32 channel

#measured rssi
int32 rssi
")



(provide :rf_msgs/AccessPoints "abf4bd98be28b4420acdb573e4838a47")


