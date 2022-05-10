FROM osrf/ros:melodic-desktop-full

RUN apt-get update
RUN apt-get -y install ros-melodic-robot-state-publisher ros-melodic-moveit ros-melodic-rosbridge-suite ros-melodic-joy ros-melodic-ros-control ros-melodic-ros-controllers ros-melodic-tf2-web-republisher python-pip ros-melodic-joint-state-publisher-gui python-catkin-pkg python-pymodbus python-rosinstall-generator mesa-utils libgl1-mesa-glx

RUN pip install jsonpickle

RUN mkdir -p ~/catkin_ws/src
RUN git clone https://github.com/NiryoRobotics/niryo_one_ros.git ~/catkin_ws/src
RUN . /opt/ros/melodic/setup.sh && cd ~/catkin_ws && catkin_make

RUN printf "source /opt/ros/melodic/setup.bash\nsource ~/catkin_ws/devel/setup.bash\n" >> ~/.bashrc
