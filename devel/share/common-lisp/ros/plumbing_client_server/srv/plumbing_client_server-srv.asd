
(cl:in-package :asdf)

(defsystem "plumbing_client_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Addient" :depends-on ("_package_Addient"))
    (:file "_package_Addient" :depends-on ("_package"))
  ))