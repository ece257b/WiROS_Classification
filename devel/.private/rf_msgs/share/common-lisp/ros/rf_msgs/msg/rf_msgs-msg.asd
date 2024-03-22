
(cl:in-package :asdf)

(defsystem "rf_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AccessPoints" :depends-on ("_package_AccessPoints"))
    (:file "_package_AccessPoints" :depends-on ("_package"))
    (:file "AccessPoints" :depends-on ("_package_AccessPoints"))
    (:file "_package_AccessPoints" :depends-on ("_package"))
    (:file "Bearing" :depends-on ("_package_Bearing"))
    (:file "_package_Bearing" :depends-on ("_package"))
    (:file "Bearing" :depends-on ("_package_Bearing"))
    (:file "_package_Bearing" :depends-on ("_package"))
    (:file "Station" :depends-on ("_package_Station"))
    (:file "_package_Station" :depends-on ("_package"))
    (:file "Station" :depends-on ("_package_Station"))
    (:file "_package_Station" :depends-on ("_package"))
    (:file "Wifi" :depends-on ("_package_Wifi"))
    (:file "_package_Wifi" :depends-on ("_package"))
    (:file "Wifi" :depends-on ("_package_Wifi"))
    (:file "_package_Wifi" :depends-on ("_package"))
  ))