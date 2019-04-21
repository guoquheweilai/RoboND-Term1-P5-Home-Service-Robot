#!/bin/sh

# Create a test_navigation.sh shell script that launches these files
# turtlebot_world.launch: to deploy a turtlebot in your environment
# amcl_demo.launch: to localize the turtlebot
# pick_objects node: navigate to two points (pick up and drop off)


# Define workspace variable
path_catkin_ws="/home/workspace/RoboND-Term1-P5-Home-Service-Robot/catkin_ws"

# Open the workspace, source and launch turtlebot_world.launch
xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
# Open the workspace, source and launch amcl_demo.launch
xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 5
# Open the workspace, source and launch pick_objects pick_objects
xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && rosrun pick_objects pick_objects" 
