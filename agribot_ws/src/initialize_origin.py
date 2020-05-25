#!/usr/bin/env python2
# -*- coding: utf-8 -*-

# Copyright (C) 2017, Southwest Research Institute® (SwRI®)
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors
# may be used to endorse or promote products derived from this software without
# specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

import rospy
from importlib import import_module
from gps_common.msg import GPSFix
from sensor_msgs.msg import NavSatFix
from swri_transform_util.origin_manager import OriginManager, InvalidFixException


def navsat_callback(msg, params):
    (manager, subscribers) = params
    try:
        subs = list(subscribers)
        while subscribers: subscribers.pop()
        rospy.loginfo('Got NavSat message. Setting origin and unsubscribing.')
        manager.set_origin_from_navsat(msg)
        for sub in subs:
            sub.unregister()
    except InvalidFixException as e:
        rospy.logwarn(e)
        return


def gps_callback(msg, params):
    (manager, subscribers) = params
    try:
        subs = list(subscribers)
        while subscribers: subscribers.pop()
        rospy.loginfo('Got GPSFix message. Setting origin and unsubscribing.')
        manager.set_origin_from_gps(msg)
        for sub in subs:
            sub.unregister()
    except InvalidFixException as e:
        rospy.logwarn(e)
        return


def custom_callback(self, params):
    (manager, subscribers) = params
    connection_header = self._connection_header['type'].split('/')
    ros_pkg = connection_header[0] + '.msg'
    msg_type = connection_header[1]
    msg_class = getattr(import_module(ros_pkg), msg_type)
    msg = msg_class().deserialize(self._buff)
    stamp = None
    if hasattr(msg, 'header') and hasattr(msg.header, 'stamp'):
        stamp = msg.header.stamp
    if hasattr(msg, 'pose'): # Messages like GeoPoseStamped
        msg = msg.pose
    if hasattr(msg, 'position'): # Messages like GeoPose
        msg = msg.position
    pos = None
    if hasattr(msg, 'latitude') and hasattr(msg, 'longitude') and hasattr(msg, 'altitude'):
        pos = (msg.latitude, msg.longitude, msg.altitude)
    elif hasattr(msg, 'lat') and hasattr(msg, 'lon') and hasattr(msg, 'height'):
        pos = (msg.lat, msg.lon, msg.height)

    if pos:
        subs = list(subscribers)
        while subscribers: subscribers.pop()
        rospy.loginfo('Got {} message from topic "{}". Setting origin and unsubscribing.'
                      .format(self._connection_header['type'], self._connection_header['topic']))
        manager.set_origin_from_custom(pos, stamp)
        for sub in subs:
            sub.unregister()


def main():
    rospy.init_node('initialize_origin', anonymous=True)
    local_xy_frame = rospy.get_param('~local_xy_frame', 'map')
    local_xy_origin = rospy.get_param('~local_xy_origin', 'auto')
    manager = OriginManager(local_xy_frame)
    if local_xy_origin == 'auto':
        local_xy_gpsfix_topic = rospy.get_param('~local_xy_gpsfix_topic', 'gps')
        gps_sub = rospy.Subscriber(local_xy_gpsfix_topic, GPSFix, queue_size=2)
        local_xy_navsatfix_topic = rospy.get_param('~local_xy_navsatfix_topic', 'Pole/fix')
        navsat_sub = rospy.Subscriber(local_xy_navsatfix_topic, NavSatFix, queue_size=2)
        subscribers = [gps_sub, navsat_sub]
        local_xy_custom_topic = rospy.get_param('~local_xy_custom_topic', None)
        if local_xy_custom_topic:
            custom_sub = rospy.Subscriber(local_xy_custom_topic, rospy.AnyMsg, queue_size=2)
            subscribers.append(custom_sub)

        # Add extra arguments to callback
        gps_sub.impl.add_callback(
            gps_callback, (manager, subscribers))
        navsat_sub.impl.add_callback(
            navsat_callback, (manager, subscribers))
        if local_xy_custom_topic:
            custom_sub.impl.add_callback(
                custom_callback, (manager, subscribers))
    else:
        try:
            origin_list = rospy.get_param('~local_xy_origins')
        except KeyError:
            message = 'local_xy_origin is "{}", but local_xy_origins is not specified'
            rospy.logfatal(message.format(local_xy_origin))
            exit(1)
        try:
            manager.set_origin_from_list(local_xy_origin, origin_list)
        except (TypeError, KeyError) as e:
            message = 'local_xy_origins is malformed or does not contain the local_xy_origin "{}"'
            rospy.logfatal(message.format(local_xy_origin))
            rospy.logfatal(e)
            exit(1)
    manager.start()
    rospy.spin()


if __name__ == "__main__":
    main()
