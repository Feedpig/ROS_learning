#!/usr/bin/env python3
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


#获得当前环境变量（rosrun工作环境）
path = os.path.abspath(".")
#将自定义模块所在的路径添加到 Python 的搜索路径的开始位置
sys.path.insert(0,path+"src/plumbing_pub_sub/scripts")
import tool


if __name__ == "__main__":
    #2.初始化 ROS 节点:命名(唯一)

   
    rospy.init_node("talker_p")

    rospy.loginfo("num=%d",tool.num)
    #直接导入当前scripts下的其他py文件会出现Modulnotfounderr
    """
        原因：rosrun执行时，参考路径为ROS_learning（工作空间）
            无法找到对应功能包下的py文件
        解决：可以声明python的环境变量，当依赖某个模块（py文件），
            先去指定环境变量中查找依赖
    """

    #rospy.init_node("talker_p",anonymous=True)
    #3.实例化 发布者 对象
    pub = rospy.Publisher("chatter",String,queue_size=10)
    #4.组织被发布的数据，并编写逻辑发布数据
    msg = String()  #创建 msg 对象
    msg_front = "hello 你好"
    count = 0  #计数器 
    rospy.sleep(1)
    # 设置循环频率
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():

        #拼接字符串
        msg.data = msg_front + str(count)

        pub.publish(msg)
        rate.sleep()
        rospy.loginfo("写出的数据:%s",msg.data)
        count += 1

"""
1:初始化节点
rospy.init_node("name")
2:创建实例
pub = rorspy.Publisher("name",string,queue_size = 10,latch)
3:组织发布数据，编写逻辑
msg= string()
rospy.sleep(1)
while not rospy.is_shutdown():
    pub.publish(msg)
    rospy.loginfo("")
"""