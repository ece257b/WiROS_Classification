
(cl:in-package :asdf)

(defsystem "csi_tools-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SaveChannel" :depends-on ("_package_SaveChannel"))
    (:file "_package_SaveChannel" :depends-on ("_package"))
  ))