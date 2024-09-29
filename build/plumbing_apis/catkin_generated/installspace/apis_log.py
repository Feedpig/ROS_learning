#!/usr/bin/env python3

import rospy

if __name__ == "__main__":
    rospy.init_node("hello_world")

    rospy.logdebug("hello,debug")  #不会输出
    rospy.loginfo("hello,info")  #默认白色字体
    rospy.logwarn("hello,warn")  #默认黄色字体
    rospy.logerr("hello,error")  #默认红色字体
    rospy.logfatal("hello,fatal") #默认红色字体
