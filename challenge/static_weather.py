#!/usr/bin/env python

# Copyright (c) 2019 Computer Vision Center (CVC) at the Universitat Autonoma de
# Barcelona (UAB).
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.

"""
CARLA Dynamic Weather:

Connect to a CARLA Simulator instance and control the weather. Change Sun
position smoothly with time and generate storms occasionally.
"""

import glob
import os
import sys
import rospy
import time
from std_msgs.msg import String

try:
    sys.path.append(glob.glob('../carla/dist/carla-*%d.%d-%s.egg' % (
        sys.version_info.major,
        sys.version_info.minor,
        'win-amd64' if os.name == 'nt' else 'linux-x86_64'))[0])
except IndexError:
    pass

import carla

import argparse
import math

class Counter():
    """
    Counter object, counting the runs of the current assessment
    """
    def __init__(self):
        """
        Init Counter and set the count to 0 and the weather to 1

        :param self: Counter
        :type self: Counter
        """
        self.count = 0
        self.weather = 1

def change_weather(data):
    """
    Recieve weather changing request

    :param data: Change Request
    :type data: String
    """
    
    print("change requested")
    set_weather()

def set_weather():
    """
    Set current weather (change current weather after 5 routes)

    """
    weahter_dict = {
        1 : carla.WeatherParameters.ClearNoon,
        2 : carla.WeatherParameters.WetNoon,
        3 : carla.WeatherParameters.HardRainNoon,
        4 : carla.WeatherParameters.ClearSunset,
        5 : carla.WeatherParameters.WetSunset,
        6 : carla.WeatherParameters.HardRainSunset,
    }
    
    print("request recieved")
    print("count: ", count.count)
    time.sleep(10)
    client = carla.Client("127.0.0.1", 2000)
    client.set_timeout(2.0)
    world = client.get_world()
    world.set_weather(weahter_dict[count.weather])
    print("set weather to No. " , str(count.weather))
    print(weahter_dict[count.weather])

    if count.count==5 or count.count==11 or count.count==17 or count.count==23 or count.count==29:
        count.count = count.count + 1
        print "change weather"
        if count.weather>=6:
            count.weather=1
        else:
            count.weather = count.weather + 1
            print "next weather"
    elif count.count == 35:
        count.count = 0
        count.weather = 1
    else:
        count.count = count.count + 1
    

def setup():
    """
    Setup subscriber and counter

    """
    rospy.Subscriber("carla_weather", String, change_weather)
    global count
    count = Counter()


def main():
    """
    Init node and run setup

    """
    rospy.init_node("carla_weather")
    setup()

    rospy.spin()

                 




if __name__ == '__main__':

    main()
