#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

if __name__=="__main__":
    rospy.init_node("hello")

    """
        需求：实现不同类型的话题设置
    """

    #1 全局 "/"
    #pub = rospy.Publisher("/chatter",String,queue_size=10)
    #pub = rospy.Publisher("/xxxx/chatter",String,queue_size=10)

    
    #2 相对 ""
    # pub = rospy.Publisher("chatter",String,queue_size=10)
    # pub = rospy.Publisher("xxx/chatter",String,queue_size=10)

    #3：私有
    pub = rospy.Publisher("~chatter",String,queue_size=10)


    while not rospy.is_shutdown():
        pass