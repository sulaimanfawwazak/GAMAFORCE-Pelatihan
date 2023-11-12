#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from gmfc.msg import coordinate

def callbackFunc(param):
    rospy.loginfo("%s: Latitude : %f Longitude : %f", param.message, param.latitude, param.longitude)


def listener():
    rospy.init_node("Bob", anonymous=True)
    sub = rospy.Subscriber("coordinate", coordinate, callback=callbackFunc)
    
    rospy.spin()

if __name__ == "__main__":
    try:
        listener()
    except rospy.ROSInitException():
        pass