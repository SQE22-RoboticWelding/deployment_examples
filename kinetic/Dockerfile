FROM osrf/ros:kinetic-desktop-full


RUN apt-get update
RUN apt-get -y install ros-kinetic-robot-state-publisher ros-kinetic-moveit ros-kinetic-rosbridge-suite ros-kinetic-joy ros-kinetic-ros-control ros-kinetic-ros-controllers ros-kinetic-tf2-web-republisher python-pip ros-kinetic-joint-state-publisher-gui python-catkin-pkg python-pymodbus python-rosinstall-generator

# RUN pip install jsonpickle # does not work so we build the develioment version:
RUN git clone https://github.com/jsonpickle/jsonpickle.git ~/jsonpickle
RUN cd ~/jsonpickle && git checkout tags/v2.1.0 && python setup.py develop

RUN mkdir -p ~/catkin_ws/src
RUN git clone https://github.com/NiryoRobotics/niryo_one_ros.git ~/catkin_ws/src
RUN . /opt/ros/kinetic/setup.sh && cd ~/catkin_ws && catkin_make

RUN printf "source /opt/ros/kinetic/setup.bash\nsource ~/catkin_ws/devel/setup.bash\n" >> ~/.bashrc
