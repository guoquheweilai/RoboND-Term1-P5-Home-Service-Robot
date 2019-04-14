#!/bin/sh

# TODO
# Create a test_slam.sh shell script that launches these files
# turtlebot_world.launch: to deploy a turtlebot in your environment
# gmapping_demo.launch or slam_gmapping: perform SLAM
# view_navigation.launch: observe the map in rviz
# keyboard_teleop.launch: manually control the robot with keyboard commands

echo "Hello"

path_catkin_ws="/home/workspace/RoboND-Term1-P5-Home-Service-Robot/catkin_ws"
echo "${path_catkin_ws}/src/turtlebot_simulator/turtlebot_gazebo/launch/turtlebot_world.launch"
: '
xterm -e "${path_catkin_ws}/src/turtlebot_simulator/turtlebot_gazebo/launch/turtlebot_world.launch" &
sleep 5
xterm -e "${path_catkin_ws}/src/turtlebot_simulator/turtlebot_gazebo/launch/gmapping_demo.launch" &
sleep 5
xterm -e "${path_catkin_ws}/src/turtlebot_interactions/turtlebot_rviz_launchers/launch/view_navigation.launch" &
sleep 5
xterm -e "${path_catkin_ws}/src/turtlebot/turtlebot_teleop/launch/keyboard_teleop.launch" &
sleep 5
'

