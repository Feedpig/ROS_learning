#! /usr/bin/env python
"""
    需求: 
        编写两个节点实现服务通信，客户端节点需要提交两个整数到服务器
        服务器需要解析客户端提交的数据，相加后，将结果响应回客户端，
        客户端再解析

    服务器端实现:
        1.导包
        2.初始化 ROS 节点
        3.创建服务对象
        4.回调函数处理请求并产生响应
        5.spin 函数

"""
# 1.导包
import rospy
from plumbing_client_server.srv import Addient,AddientRequest,AddientResponse
# 回调函数的参数是请求对象，返回值是响应对象
def doReq(req):
    # 解析提交的数据
    sum = req.num1 + req.num2
    rospy.loginfo("提交的数据:num1 = %d, num2 = %d, sum = %d",req.num1, req.num2, sum)
    # 创建响应对象，赋值并返回 
    # resp = AddIntsResponse()
    # resp.sum = sum
    #将结果封装近响应
    resp = AddientResponse(sum)
    return resp


if __name__ == "__main__":
    # 2.初始化 ROS 节点
    rospy.init_node("addints_server_p")
    # 3.创建服务对象 (name:AddInts 是一个图服务话题，用于识别对应服务客户通信)
    server = rospy.Service("AddInts",Addient,doReq) #（name，消息对应的数据类型srv，回调函数）
    # 4.回调函数处理请求并产生响应
    # 5.spin 函数
    rospy.spin()

    