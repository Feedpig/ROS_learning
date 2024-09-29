#! /usr/bin/env python
"""
    需求: 实现基本的话题通信，一方发布数据，一方接收数据，
         实现的关键点:
         1.发送方
         2.接收方
         3.数据(此处为普通文本)

         PS: 二者需要设置相同的话题


    消息发布方:
        循环发布信息:HelloWorld 后缀数字编号

    实现流程:
        1.导包 
        2.初始化 ROS 节点:命名(唯一)
        3.实例化 发布者 对象
        4.组织被发布的数据，并编写逻辑发布数据


"""
#1.导包 
import rospy
from std_msgs.msg import String
import os
import sys

# #获得当前环境变量（rosrun工作环境）
path = os.path.abspath(".")
# #将自定义模块所在的路径添加到 Python 的搜索路径的开始位置
sys.path.insert(0,path+"src/plumbing_pub_sub/scripts")

from plumbing_pub_sub.scripts import tool

def doMsg():
    rospy.loginfo("+++shut down+++")

if __name__ == "__main__":
    #2.初始化 ROS 节点:命名(唯一)

    """
        作用：ROS初始化

        参数：
            name ---- 设置节点名称的
            argv= None ----分装节点调用时传递的参数
            anonmymous=False ---- 可以为节点名称生成随机后缀，可以解决重名问题 
        使用：
            1。argv使用
                可以按照ros中指定的语法格式传参，ROS可以解释并加以使用
            
            2.annomymous
                设置为 = True 后，节点名可以随机生成 

    """
    #只能执行一次
    #rospy.init_node("talker_p")

    #可以同时执行多次（不同名称--talker—_p）
    rospy.init_node("talker_p",anonymous=True)

    rospy.loginfo("num=%d",tool.num)
    #3.实例化 发布者 对象
    """
        内容：latchh
            bool 值，默认为Flase （不用写）
        
        作用：
            当为true，可以将发布的最后一条数据保存
            且后续当新的订阅对象连接时，会将该数据发送
            给订阅者
        使用：
            latch = True

        应用场景：

            ********
            *当导入静态地图时，不需要一直发送，
            *设置latch =  Ture : 最后一个消息会保存并当
            *有新的订阅者的时候自动发送
            ********
    """
    pub = rospy.Publisher("chatter",String,queue_size=10,latch =  True)
    


    #4.组织被发布的数据，并编写逻辑发布数据
    msg = String()  #创建 msg 对象
    msg_front = "hello 你好"
    count = 0  #计数器 
    rospy.sleep(1)
    # 设置循环频率
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
      
        #计数
        count += 1
        #发布数据
        if count <= 10:

            msg.data = msg_front + str(count)
            pub.publish(msg)
            rospy.loginfo("写出的数据:%s",msg.data)
        else:
            #1.关闭节点
            rospy.signal_shutdown("shutdown node")
            #2.关闭节点之后执行 回调函数
            rospy.on_shutdown(doMsg)
        rate.sleep()
