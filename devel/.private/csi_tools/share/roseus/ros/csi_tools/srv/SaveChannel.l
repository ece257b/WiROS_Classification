;; Auto-generated. Do not edit!


(when (boundp 'csi_tools::SaveChannel)
  (if (not (find-package "CSI_TOOLS"))
    (make-package "CSI_TOOLS"))
  (shadow 'SaveChannel (find-package "CSI_TOOLS")))
(unless (find-package "CSI_TOOLS::SAVECHANNEL")
  (make-package "CSI_TOOLS::SAVECHANNEL"))
(unless (find-package "CSI_TOOLS::SAVECHANNELREQUEST")
  (make-package "CSI_TOOLS::SAVECHANNELREQUEST"))
(unless (find-package "CSI_TOOLS::SAVECHANNELRESPONSE")
  (make-package "CSI_TOOLS::SAVECHANNELRESPONSE"))

(in-package "ROS")





(defclass csi_tools::SaveChannelRequest
  :super ros::object
  :slots (_filename _num_channels _mac ))

(defmethod csi_tools::SaveChannelRequest
  (:init
   (&key
    ((:filename __filename) "")
    ((:num_channels __num_channels) 0)
    ((:mac __mac) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   (setq _num_channels (round __num_channels))
   (setq _mac (string __mac))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:num_channels
   (&optional __num_channels)
   (if __num_channels (setq _num_channels __num_channels)) _num_channels)
  (:mac
   (&optional __mac)
   (if __mac (setq _mac __mac)) _mac)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ;; int32 _num_channels
    4
    ;; string _mac
    4 (length _mac)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; int32 _num_channels
       (write-long _num_channels s)
     ;; string _mac
       (write-long (length _mac) s) (princ _mac s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _num_channels
     (setq _num_channels (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mac
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mac (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass csi_tools::SaveChannelResponse
  :super ros::object
  :slots (_result ))

(defmethod csi_tools::SaveChannelResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass csi_tools::SaveChannel
  :super ros::object
  :slots ())

(setf (get csi_tools::SaveChannel :md5sum-) "e4f28584a2301cb8628c003709fe824c")
(setf (get csi_tools::SaveChannel :datatype-) "csi_tools/SaveChannel")
(setf (get csi_tools::SaveChannel :request) csi_tools::SaveChannelRequest)
(setf (get csi_tools::SaveChannel :response) csi_tools::SaveChannelResponse)

(defmethod csi_tools::SaveChannelRequest
  (:response () (instance csi_tools::SaveChannelResponse :init)))

(setf (get csi_tools::SaveChannelRequest :md5sum-) "e4f28584a2301cb8628c003709fe824c")
(setf (get csi_tools::SaveChannelRequest :datatype-) "csi_tools/SaveChannelRequest")
(setf (get csi_tools::SaveChannelRequest :definition-)
      "#set these values to -1 to keep the current configuration
string filename
int32 num_channels
#leave as '' for no mac filter
string mac
---
string result
")

(setf (get csi_tools::SaveChannelResponse :md5sum-) "e4f28584a2301cb8628c003709fe824c")
(setf (get csi_tools::SaveChannelResponse :datatype-) "csi_tools/SaveChannelResponse")
(setf (get csi_tools::SaveChannelResponse :definition-)
      "#set these values to -1 to keep the current configuration
string filename
int32 num_channels
#leave as '' for no mac filter
string mac
---
string result
")



(provide :csi_tools/SaveChannel "e4f28584a2301cb8628c003709fe824c")


