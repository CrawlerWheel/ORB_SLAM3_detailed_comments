#!/bin/bash

SLAM_IS_OK="FALSE"
export SLAM_IS_OK
ROS_BAG_IS_OK="FALSE"
export  ROS_BAG_IS_OK
STATE="RUN"
export STATE

./run_ros_orbslam.sh > ./slam_log &
./run_rosbag.sh > ./rosbag_log &

while  true; do
    echo running experiment...
    while true; do
      sleep 5
      if [[ $STATE = "FINISH" ]]; then
          echo experiment finish!
          exit 1
      fi
    done
done
