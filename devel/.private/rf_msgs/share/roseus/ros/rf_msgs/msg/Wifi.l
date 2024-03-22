;; Auto-generated. Do not edit!


(when (boundp 'rf_msgs::Wifi)
  (if (not (find-package "RF_MSGS"))
    (make-package "RF_MSGS"))
  (shadow 'Wifi (find-package "RF_MSGS")))
(unless (find-package "RF_MSGS::WIFI")
  (make-package "RF_MSGS::WIFI"))

(in-package "ROS")
;;//! \htmlinclude Wifi.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rf_msgs::Wifi
  :super ros::object
  :slots (_header _ap_id _txmac _chan _n_sub _n_rows _n_cols _bw _mcs _rssi _fc _seq_num _csi_real _csi_imag _rx_id _msg_id ))

(defmethod rf_msgs::Wifi
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ap_id __ap_id) 0)
    ((:txmac __txmac) (make-array 0 :initial-element 0 :element-type :char))
    ((:chan __chan) 0)
    ((:n_sub __n_sub) 0)
    ((:n_rows __n_rows) 0)
    ((:n_cols __n_cols) 0)
    ((:bw __bw) 0)
    ((:mcs __mcs) 0)
    ((:rssi __rssi) 0)
    ((:fc __fc) 0)
    ((:seq_num __seq_num) 0)
    ((:csi_real __csi_real) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:csi_imag __csi_imag) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rx_id __rx_id) "")
    ((:msg_id __msg_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ap_id (round __ap_id))
   (setq _txmac __txmac)
   (setq _chan (round __chan))
   (setq _n_sub (round __n_sub))
   (setq _n_rows (round __n_rows))
   (setq _n_cols (round __n_cols))
   (setq _bw (round __bw))
   (setq _mcs (round __mcs))
   (setq _rssi (round __rssi))
   (setq _fc (round __fc))
   (setq _seq_num (round __seq_num))
   (setq _csi_real __csi_real)
   (setq _csi_imag __csi_imag)
   (setq _rx_id (string __rx_id))
   (setq _msg_id (round __msg_id))
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
  (:chan
   (&optional __chan)
   (if __chan (setq _chan __chan)) _chan)
  (:n_sub
   (&optional __n_sub)
   (if __n_sub (setq _n_sub __n_sub)) _n_sub)
  (:n_rows
   (&optional __n_rows)
   (if __n_rows (setq _n_rows __n_rows)) _n_rows)
  (:n_cols
   (&optional __n_cols)
   (if __n_cols (setq _n_cols __n_cols)) _n_cols)
  (:bw
   (&optional __bw)
   (if __bw (setq _bw __bw)) _bw)
  (:mcs
   (&optional __mcs)
   (if __mcs (setq _mcs __mcs)) _mcs)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:fc
   (&optional __fc)
   (if __fc (setq _fc __fc)) _fc)
  (:seq_num
   (&optional __seq_num)
   (if __seq_num (setq _seq_num __seq_num)) _seq_num)
  (:csi_real
   (&optional __csi_real)
   (if __csi_real (setq _csi_real __csi_real)) _csi_real)
  (:csi_imag
   (&optional __csi_imag)
   (if __csi_imag (setq _csi_imag __csi_imag)) _csi_imag)
  (:rx_id
   (&optional __rx_id)
   (if __rx_id (setq _rx_id __rx_id)) _rx_id)
  (:msg_id
   (&optional __msg_id)
   (if __msg_id (setq _msg_id __msg_id)) _msg_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _ap_id
    1
    ;; uint8[] _txmac
    (* 1    (length _txmac)) 4
    ;; uint8 _chan
    1
    ;; uint32 _n_sub
    4
    ;; uint8 _n_rows
    1
    ;; uint8 _n_cols
    1
    ;; uint8 _bw
    1
    ;; uint8 _mcs
    1
    ;; int32 _rssi
    4
    ;; uint32 _fc
    4
    ;; uint32 _seq_num
    4
    ;; float64[] _csi_real
    (* 8    (length _csi_real)) 4
    ;; float64[] _csi_imag
    (* 8    (length _csi_imag)) 4
    ;; string _rx_id
    4 (length _rx_id)
    ;; uint32 _msg_id
    4
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
     ;; uint8 _chan
       (write-byte _chan s)
     ;; uint32 _n_sub
       (write-long _n_sub s)
     ;; uint8 _n_rows
       (write-byte _n_rows s)
     ;; uint8 _n_cols
       (write-byte _n_cols s)
     ;; uint8 _bw
       (write-byte _bw s)
     ;; uint8 _mcs
       (write-byte _mcs s)
     ;; int32 _rssi
       (write-long _rssi s)
     ;; uint32 _fc
       (write-long _fc s)
     ;; uint32 _seq_num
       (write-long _seq_num s)
     ;; float64[] _csi_real
     (write-long (length _csi_real) s)
     (dotimes (i (length _csi_real))
       (sys::poke (elt _csi_real i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _csi_imag
     (write-long (length _csi_imag) s)
     (dotimes (i (length _csi_imag))
       (sys::poke (elt _csi_imag i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _rx_id
       (write-long (length _rx_id) s) (princ _rx_id s)
     ;; uint32 _msg_id
       (write-long _msg_id s)
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
   ;; uint8 _chan
     (setq _chan (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _n_sub
     (setq _n_sub (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _n_rows
     (setq _n_rows (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _n_cols
     (setq _n_cols (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _bw
     (setq _bw (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mcs
     (setq _mcs (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _rssi
     (setq _rssi (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fc
     (setq _fc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _seq_num
     (setq _seq_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _csi_real
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _csi_real (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _csi_real i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _csi_imag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _csi_imag (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _csi_imag i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _rx_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rx_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _msg_id
     (setq _msg_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rf_msgs::Wifi :md5sum-) "c6b3816e58324f4c826cc5e2cd4f2f3b")
(setf (get rf_msgs::Wifi :datatype-) "rf_msgs/Wifi")
(setf (get rf_msgs::Wifi :definition-)
      "# This message accepts data from a WiFi access point for us in 
# robotics applications. The core data point is CSI, the channel
# state information. 

# CSI matrix is n_sub x n_rows x n_cols

Header header

uint8 ap_id # access point collecting the CSI
uint8[] txmac

uint8 chan # channel number

uint32 n_sub # number of subcarriers
uint8 n_rows # number of rows for the CSI matrix, generally the number of RX antenna
uint8 n_cols # number of columns, generally the number of TX antenna

# bandwidth of the signal, can be 20, 40 or 80 MHz, 
# the number of subcarriers are affected by this numbers
uint8 bw 

# the number of spatial channels. 
# Fewer than n_cols means the columns index greater than number of 
# spatial channels will be zero
uint8 mcs 

int32 rssi # received signal strength across \"n_rows\" antennas

uint32 fc # packet type byte
uint32 seq_num # packet number

float64[] csi_real # channel state information - real part
float64[] csi_imag # channel state information - complex part

string rx_id #flag of receiver

uint32 msg_id #realtime msg for debug

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



(provide :rf_msgs/Wifi "c6b3816e58324f4c826cc5e2cd4f2f3b")


