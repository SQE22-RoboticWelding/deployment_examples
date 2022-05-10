from niryo_one_python_api.niryo_one_api import *
import rospy
import time


def grab_release_reset(niryo):
	niryo.grab_with_tool(niryo.get_current_tool_id())  # grab
	niryo.release_tool(niryo.get_current_tool_id())  # release
	niryo.move_pose(0.1, 0.1, 0.4, 0, 0, 0)  # reset


if __name__ == '__main__':
    rospy.init_node('niryo_one_example_python_api')

    n = NiryoOne()

    # move to initial position
    n.move_pose(0.1, 0.1, 0.4, 0, 0, 0)

    # welding point one
    n.move_pose(0.1, 0.1, 0.1, 0, 0, 0)
    grab_release_reset(n)

    # welding point two
    n.move_pose(0.297, 0, 0.1, 0, 0, 0)
    grab_release_reset(n)

    # welding point three
    n.move_pose(0.297, 0.21, 0.1, 0, 0, -0.5708)
    grab_release_reset(n)

    # welding point four
    n.move_pose(0, 0.21, 0.1, 0, 0, 0.5708)
    grab_release_reset(n)

