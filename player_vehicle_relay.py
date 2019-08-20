#!/usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from std_msgs.msg import String
from carla_msgs.msg import CarlaEgoVehicleStatus



def on_odometry(data):
    global msg_tmp_1
    msg_tmp_1 = str(data.pose.pose.position.x) + " " \
        + str(data.pose.pose.position.y) + " " \
        + str(data.pose.pose.position.z) + " " \
        + str(data.pose.pose.orientation.x) + " " \
        + str(data.pose.pose.orientation.y) + " " \
        + str(data.pose.pose.orientation.z) + " " \
        + str(data.twist.twist.angular.x) + " " \
        + str(data.twist.twist.angular.y) + " " \
        + str(data.twist.twist.angular.z) + " " \
        + str(data.twist.twist.linear.x) + " " \
        + str(data.twist.twist.linear.y) + " " \
        + str(data.twist.twist.linear.z) + " " \
 

def on_vehiclestat(data):
    global msg_tmp_2
    msg_tmp_2 =  str(data.acceleration * data.orientation.x) + " " \
        + str(data.acceleration * data.orientation.y) + " " \
        + str(data.acceleration * data.orientation.z) + " " \
        + str(data.velocity)


def setup():
    rospy.init_node('player_vehicle')
    rospy.Subscriber('/carla/ego_vehicle/odometry', Odometry, on_odometry)
    rospy.Subscriber('/carla/ego_vehicle/vehicle_status', CarlaEgoVehicleStatus, on_vehiclestat)
    rospy.sleep(1)
    


def main():
    setup()
    pub = rospy.Publisher('/player_vehicle', String, queue_size=10)

    while not rospy.is_shutdown():

        msg = String()
        msg.data = msg_tmp_1 + msg_tmp_2

        pub.publish(msg)
        print(msg_tmp_1)

if __name__ == '__main__':
    main()

