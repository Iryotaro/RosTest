#!/usr/bin/env python
import rospy
from std_msgs.msg import UInt16

def recv_buzzer(date):
    rospy.loginfo(type(date))
    rospy.loginfo(date.date)

if __name__ == '__main__':
    rospy.init_node('buzzer')
    rospy.Subscriber("buzzer", UInt16, recv_buzzer)
    rospy.spin()