
(cl:in-package :asdf)

(defsystem "wiros_csi_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConfigureCSI" :depends-on ("_package_ConfigureCSI"))
    (:file "_package_ConfigureCSI" :depends-on ("_package"))
  ))