#!/usr/bin/env python

import rospy
import transform
from std_msgs.msg import String
from sensor_msgs.msg import NavSatFix

def player_vehicle(carla_vehicle):
	pub = rospy.Publisher("/player_vehicle", String)
	rospy.init_node("vehicle_data_to_apollo")
	
	location=carla_location_to_ros_vector3(self.carla_actor.get_location())
	rotation=carla_rotation_to_RPY(self.carla_actor.get_rotation())
	velocity=carla_velocity_to_ros_twist(self.carla_actor.get_velocity())
	accerleration=carla_acceleration_to_ros_accel(self.carla_actor.get_acceleration())
	
	while not rospy.is_shutdown():
		'''
                    [0] location.x
                    [1] location.y
                    [2] location.z
                    [3] rotation.pitch
                    [4] rotation.roll
                    [5] rotation.yaw
                    [6] angular_velocity.x
                    [7] angular_velocity.y
                    [8] angular_velocity.z
                    [9] linear_velocity.x
                    [10] linear_velocity.y
                    [11] linear_velocity.z
                    [12] acceleration.x
                    [13] acceleration.y
                    [14] acceleration.z
                    [15] forward_speed
                '''			
		msg_tmp = String()
                msg_tmp.data = str(location.x) + " " \
                                + str(location.y) + " " \
                                + str(location.z) + " " \
                                + str(rotation[1]) + " " \
                                + str(rotation[0]) + " " \
                                + str(rotation[2]) + " " \
                                + str() + " " \
                                + str() + " " \
                                + str() + " " \
                                + str(velocity.linear.x) + " " \
                                + str(velocity.linear.y) + " " \
                                + str(velocity.linear.z) + " " \
                                + str(acceleration.linear.x) + " " \
                                + str(acceleration.linear.y) + " " \
                                + str(acceleration.linear.z) + " " \
                                + str()
		pub.publish(msg_tmp)
		
