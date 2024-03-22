;; Auto-generated. Do not edit!


(when (boundp 'wiros_csi_node::ConfigureCSI)
  (if (not (find-package "WIROS_CSI_NODE"))
    (make-package "WIROS_CSI_NODE"))
  (shadow 'ConfigureCSI (find-package "WIROS_CSI_NODE")))
(unless (find-package "WIROS_CSI_NODE::CONFIGURECSI")
  (make-package "WIROS_CSI_NODE::CONFIGURECSI"))
(unless (find-package "WIROS_CSI_NODE::CONFIGURECSIREQUEST")
  (make-package "WIROS_CSI_NODE::CONFIGURECSIREQUEST"))
(unless (find-package "WIROS_CSI_NODE::CONFIGURECSIRESPONSE")
  (make-package "WIROS_CSI_NODE::CONFIGURECSIRESPONSE"))

(in-package "ROS")





(defclass wiros_csi_node::ConfigureCSIRequest
  :super ros::object
  :slots (_chan _bw _mac_filter ))

(defmethod wiros_csi_node::ConfigureCSIRequest
  (:init
   (&key
    ((:chan __chan) 0)
    ((:bw __bw) 0)
    ((:mac_filter __mac_filter) "")
    )
   (send-super :init)
   (setq _chan (round __chan))
   (setq _bw (round __bw))
   (setq _mac_filter (string __mac_filter))
   self)
  (:chan
   (&optional __chan)
   (if __chan (setq _chan __chan)) _chan)
  (:bw
   (&optional __bw)
   (if __bw (setq _bw __bw)) _bw)
  (:mac_filter
   (&optional __mac_filter)
   (if __mac_filter (setq _mac_filter __mac_filter)) _mac_filter)
  (:serialization-length
   ()
   (+
    ;; int32 _chan
    4
    ;; int32 _bw
    4
    ;; string _mac_filter
    4 (length _mac_filter)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _chan
       (write-long _chan s)
     ;; int32 _bw
       (write-long _bw s)
     ;; string _mac_filter
       (write-long (length _mac_filter) s) (princ _mac_filter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _chan
     (setq _chan (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bw
     (setq _bw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mac_filter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mac_filter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass wiros_csi_node::ConfigureCSIResponse
  :super ros::object
  :slots (_result ))

(defmethod wiros_csi_node::ConfigureCSIResponse
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

(defclass wiros_csi_node::ConfigureCSI
  :super ros::object
  :slots ())

(setf (get wiros_csi_node::ConfigureCSI :md5sum-) "37e074cc5fb8a82d0a146e413ef0dc09")
(setf (get wiros_csi_node::ConfigureCSI :datatype-) "wiros_csi_node/ConfigureCSI")
(setf (get wiros_csi_node::ConfigureCSI :request) wiros_csi_node::ConfigureCSIRequest)
(setf (get wiros_csi_node::ConfigureCSI :response) wiros_csi_node::ConfigureCSIResponse)

(defmethod wiros_csi_node::ConfigureCSIRequest
  (:response () (instance wiros_csi_node::ConfigureCSIResponse :init)))

(setf (get wiros_csi_node::ConfigureCSIRequest :md5sum-) "37e074cc5fb8a82d0a146e413ef0dc09")
(setf (get wiros_csi_node::ConfigureCSIRequest :datatype-) "wiros_csi_node/ConfigureCSIRequest")
(setf (get wiros_csi_node::ConfigureCSIRequest :definition-)
      "#set these values to -1 to keep the current configuration
int32 chan
int32 bw

#set to \"\" to keep current config
string mac_filter
---
string result
")

(setf (get wiros_csi_node::ConfigureCSIResponse :md5sum-) "37e074cc5fb8a82d0a146e413ef0dc09")
(setf (get wiros_csi_node::ConfigureCSIResponse :datatype-) "wiros_csi_node/ConfigureCSIResponse")
(setf (get wiros_csi_node::ConfigureCSIResponse :definition-)
      "#set these values to -1 to keep the current configuration
int32 chan
int32 bw

#set to \"\" to keep current config
string mac_filter
---
string result
")



(provide :wiros_csi_node/ConfigureCSI "37e074cc5fb8a82d0a146e413ef0dc09")


