# RoboND-Term1-P5-Home-Service-Robot
Project 5 of Udacity Robotics Software Engineer Nanodegree

```
cd RoboND-Term1-P5-Home-Service-Robot/catkin_ws/src  
git clone https://github.com/ros-perception/slam_gmapping.git  
git clone https://github.com/turtlebot/turtlebot.git  
git clone https://github.com/turtlebot/turtlebot_interactions.git  
git clone https://github.com/turtlebot/turtlebot_simulator.git  
```

Q&A
Add the following line into the /home/workspace/.student_bashrc
# export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/dist-packages  
```
pip install catkin_pkg  
pip install rospkg  
```

catkin_create_pkg pick_objects move_base_msgs actionlib roscpp  
catkin_create_pkg add_markers roscpp visualization_msgs  

To see the marker(virtual objects) demo, in addition to running the `./add_marker.sh`, you will need to manually add a 'Marker' in rviz like the following steps:  
Find your rviz window  
In the left botton panel, click "Add" button  
In 'By display type' tab, navigate the tree to 'rviz' then 'Marker'  
Click 'OK' button  
Done, you should see the marker(virtual objects) appear, disapper then appear again  
