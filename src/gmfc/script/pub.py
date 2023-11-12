#!/usr/bin/env python3
# Shebang line

import rospy
from std_msgs.msg import String
from gmfc.msg import coordinate

def talker():
    rospy.init_node("Alice", anonymous=True) #(<node_name>, anon)

    # Published node
    pub = rospy.Publisher("coordinate", coordinate, queue_size=10) #(<topic_name>, <data_type>, queue_size)
    rate = rospy.Rate(10)

    rospy.loginfo("[>] Pesan Siap Di-Publish") # Warnanya putih
    rospy.logwarn("[-] Warning") # Warnanya kuning
    rospy.logerr("[x] Error") # Warnanya merah

    while not rospy.is_shutdown():
        msg = coordinate()
        msg.message = "Koordinat" 
        msg.latitude = 180.35134
        msg.longitude = -45.1235
        pub.publish(msg)
        rate.sleep()

if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInitException():
        pass