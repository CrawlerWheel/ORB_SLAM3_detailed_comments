#!/bin/bash


#SLAM_IS_OK="FALSE"
#export SLAM_IS_OK
#echo $SLAM_IS_OK


#while(($ROS_BAG_IS_OK=="FALSE"));do
#  sleep 2
#  echo waiting for rosbag signal
#done

WORKSPACE=/home/crawler/my_robot/ORB_SLAM3_detailed_comments

for i in {1..10} ; do
  while true
  do
    sleep 5
    #STATE="FINISH"
    SLAM_IS_OK="TRUE"
    if [[ -z $ROS_BAG_IS_OK ]]; then
        echo okoko
    elif [[ $ROS_BAG_IS_OK  = "FALSE" ]]; then
        echo waiting rosbag
    elif [[ $ROS_BAG_IS_OK  = "TRUE" ]]; then
        echo start!
        #rosrun ORB_SLAM3 Stereo_Inertial $WORKSPACE/Vocabulary/ORBvoc.txt $WORKSPACE/Examples_old/ROS/ORB_SLAM3/config/rosario.yaml true
    fi
  done

done