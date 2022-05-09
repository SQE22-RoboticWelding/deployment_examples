FROM osrf/ros:noetic-desktop-full

RUN apt-get update
RUN apt-get -y install build-essential git ros-noetic-robot-state-publisher ros-noetic-moveit ros-noetic-rosbridge-suite ros-noetic-joy ros-noetic-ros-control ros-noetic-ros-controllers ros-noetic-tf2-web-republisher python3-pip ros-noetic-joint-state-publisher-gui python3-catkin-pkg python3-pymodbus python3-rosinstall-generator mesa-utils libgl1-mesa-glx

RUN pip install jsonpickle

RUN mkdir -p ~/catkin_ws/src
RUN git clone https://github.com/NiryoRobotics/niryo_one_ros.git ~/catkin_ws/src
RUN . /opt/ros/noetic/setup.sh && cd ~/catkin_ws && catkin_make

RUN printf "source /opt/ros/noetic/setup.bash\nsource ~/catkin_ws/devel/setup.bash\n" >> ~/.bashrc
