;; Auto-generated. Do not edit!


(when (boundp 'plumbing_client_server::Addient)
  (if (not (find-package "PLUMBING_CLIENT_SERVER"))
    (make-package "PLUMBING_CLIENT_SERVER"))
  (shadow 'Addient (find-package "PLUMBING_CLIENT_SERVER")))
(unless (find-package "PLUMBING_CLIENT_SERVER::ADDIENT")
  (make-package "PLUMBING_CLIENT_SERVER::ADDIENT"))
(unless (find-package "PLUMBING_CLIENT_SERVER::ADDIENTREQUEST")
  (make-package "PLUMBING_CLIENT_SERVER::ADDIENTREQUEST"))
(unless (find-package "PLUMBING_CLIENT_SERVER::ADDIENTRESPONSE")
  (make-package "PLUMBING_CLIENT_SERVER::ADDIENTRESPONSE"))

(in-package "ROS")





(defclass plumbing_client_server::AddientRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod plumbing_client_server::AddientRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_client_server::AddientResponse
  :super ros::object
  :slots (_sum ))

(defmethod plumbing_client_server::AddientResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_client_server::Addient
  :super ros::object
  :slots ())

(setf (get plumbing_client_server::Addient :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_client_server::Addient :datatype-) "plumbing_client_server/Addient")
(setf (get plumbing_client_server::Addient :request) plumbing_client_server::AddientRequest)
(setf (get plumbing_client_server::Addient :response) plumbing_client_server::AddientResponse)

(defmethod plumbing_client_server::AddientRequest
  (:response () (instance plumbing_client_server::AddientResponse :init)))

(setf (get plumbing_client_server::AddientRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_client_server::AddientRequest :datatype-) "plumbing_client_server/AddientRequest")
(setf (get plumbing_client_server::AddientRequest :definition-)
      "int32 num1
int32 num2
---
#服务器响应发送数据
int32 sum
")

(setf (get plumbing_client_server::AddientResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_client_server::AddientResponse :datatype-) "plumbing_client_server/AddientResponse")
(setf (get plumbing_client_server::AddientResponse :definition-)
      "int32 num1
int32 num2
---
#服务器响应发送数据
int32 sum
")



(provide :plumbing_client_server/Addient "4781436a0c2affec8025955a6041e481")


