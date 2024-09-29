#!(shebang) /user/bin/env python

import rospy

"""
    需求1： 演示时间相关操作（获取当前时刻+设置指定时刻）

    需求2：程序执行中停顿 5 s

    需求3： 获取程序开始执行的时刻，且一直持续运行时间
            计算程序结束的时间

    需求4： 创建计时器，实现类似与 ros::Rate 的功能
            （隔某个时间执行某种操作）
"""

def doMsg(event):
    rospy.loginfo("+++++++++")
    rospy.loginfo("调用时刻为 %.2f",event.current_real.to_sec())

if __name__ == "__main__":
    
    #****需求1****： 演示时间相关操作（获取当前时刻+设置指定时刻）
    rospy.init_node("hello_time")

    #获取当前时刻
    right_now = rospy.Time.now() #将当前时刻（1.now函数被调用执行的那一刻 2.参考1970.01.01 00：00：00）获取并封装成对象
    rospy.loginfo("当前时刻：%.2f",right_now.to_sec())
    rospy.loginfo("当前时刻：%d",right_now.secs)
    
    #设置指定时刻
    time1 = rospy.Time(100)#时间（从上面参考时间逝去100s）设置成Time的对象
    time2 = rospy.Time(100,412323542)

    rospy.loginfo("指定时刻1：%.2f\t指定时刻2：%.2f",time1.to_sec(),time2.to_sec())

    #从某个时间值获取时间对象
    time3 = rospy.Time.from_sec(200.23)
    rospy.loginfo("指定时刻3：%.2f",time3.to_sec())
    
    # ***需求2：程序执行中停顿5s 
    time_now1=rospy.Time.now()
    rospy.loginfo("休眠前-------time= %.2f",time_now1.to_sec())
    #1.封装一个持续时间对象 5s
    du = rospy.Duration(5)
    #2.再将持续时间休眠
    #du.sleep() ---异常
    rospy.sleep(du)
    time_now2=rospy.Time.now()
    rospy.loginfo("休眠后-------time= %.2f",time_now2.to_sec())

    #   ***需求3： 获取程序开始执行的时刻，且一直持续运行时间

    #1.获取时间t1
    t1 = rospy.Time.now()
    #2.设置一个持续时间du1
    du1 = rospy.Duration(5)
    
    #3.结束时刻 t2 =t1 +du1

    t2 = t1 +du1
    rospy.loginfo("start_time= %.2f",t1.to_sec())
    rospy.loginfo("start_time= %.2f",t2.to_sec())
    
    # **需求4： 创建计时器，实现蕾西与 ros::Rate 的功能
    """
        Constructor.
        @param period: desired period between callbacks
        @type  period: rospy.Duration
        @param callback: callback to be called
        @type  callback: function taking rospy.TimerEvent
        @param oneshot: if True, fire only once, otherwise fire continuously until shutdown is called [default: False]
        @type  oneshot: bool
        @param reset: if True, timer is reset when rostime moved backward. [default: False]
        @type  reset: bool
        """
    #创建定时器
    timer = rospy.Timer(rospy.Duration(2),doMsg)
    
    #下面加入True时，只发送一条
    #timer = rospy.Timer(rospy.Duration(2),doMsg,Ture)
    #callback函数
    rospy.spin()