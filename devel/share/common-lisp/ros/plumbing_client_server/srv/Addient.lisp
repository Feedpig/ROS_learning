; Auto-generated. Do not edit!


(cl:in-package plumbing_client_server-srv)


;//! \htmlinclude Addient-request.msg.html

(cl:defclass <Addient-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass Addient-request (<Addient-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Addient-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Addient-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_client_server-srv:<Addient-request> is deprecated: use plumbing_client_server-srv:Addient-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <Addient-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_client_server-srv:num1-val is deprecated.  Use plumbing_client_server-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <Addient-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_client_server-srv:num2-val is deprecated.  Use plumbing_client_server-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Addient-request>) ostream)
  "Serializes a message object of type '<Addient-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Addient-request>) istream)
  "Deserializes a message object of type '<Addient-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Addient-request>)))
  "Returns string type for a service object of type '<Addient-request>"
  "plumbing_client_server/AddientRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addient-request)))
  "Returns string type for a service object of type 'Addient-request"
  "plumbing_client_server/AddientRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Addient-request>)))
  "Returns md5sum for a message object of type '<Addient-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Addient-request)))
  "Returns md5sum for a message object of type 'Addient-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Addient-request>)))
  "Returns full string definition for message of type '<Addient-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Addient-request)))
  "Returns full string definition for message of type 'Addient-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Addient-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Addient-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Addient-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude Addient-response.msg.html

(cl:defclass <Addient-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass Addient-response (<Addient-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Addient-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Addient-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_client_server-srv:<Addient-response> is deprecated: use plumbing_client_server-srv:Addient-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <Addient-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_client_server-srv:sum-val is deprecated.  Use plumbing_client_server-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Addient-response>) ostream)
  "Serializes a message object of type '<Addient-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Addient-response>) istream)
  "Deserializes a message object of type '<Addient-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Addient-response>)))
  "Returns string type for a service object of type '<Addient-response>"
  "plumbing_client_server/AddientResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addient-response)))
  "Returns string type for a service object of type 'Addient-response"
  "plumbing_client_server/AddientResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Addient-response>)))
  "Returns md5sum for a message object of type '<Addient-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Addient-response)))
  "Returns md5sum for a message object of type 'Addient-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Addient-response>)))
  "Returns full string definition for message of type '<Addient-response>"
  (cl:format cl:nil "#服务器响应发送数据~%int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Addient-response)))
  "Returns full string definition for message of type 'Addient-response"
  (cl:format cl:nil "#服务器响应发送数据~%int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Addient-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Addient-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Addient-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Addient)))
  'Addient-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Addient)))
  'Addient-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addient)))
  "Returns string type for a service object of type '<Addient>"
  "plumbing_client_server/Addient")