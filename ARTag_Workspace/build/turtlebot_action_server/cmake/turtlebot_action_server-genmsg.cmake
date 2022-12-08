# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlebot_action_server: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iturtlebot_action_server:/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlebot_action_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg" NAME_WE)
add_custom_target(_turtlebot_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot_action_server" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg" "turtlebot_action_server/burger_moveActionResult:actionlib_msgs/GoalID:turtlebot_action_server/burger_moveFeedback:std_msgs/Header:turtlebot_action_server/burger_moveActionGoal:turtlebot_action_server/burger_moveGoal:actionlib_msgs/GoalStatus:turtlebot_action_server/burger_moveResult:turtlebot_action_server/burger_moveActionFeedback"
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg" NAME_WE)
add_custom_target(_turtlebot_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot_action_server" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:turtlebot_action_server/burger_moveGoal"
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg" NAME_WE)
add_custom_target(_turtlebot_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot_action_server" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:turtlebot_action_server/burger_moveResult"
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg" NAME_WE)
add_custom_target(_turtlebot_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot_action_server" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg" "std_msgs/Header:actionlib_msgs/GoalID:turtlebot_action_server/burger_moveFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg" NAME_WE)
add_custom_target(_turtlebot_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot_action_server" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg" ""
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg" NAME_WE)
add_custom_target(_turtlebot_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot_action_server" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg" ""
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg" NAME_WE)
add_custom_target(_turtlebot_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot_action_server" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_cpp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_cpp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_cpp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_cpp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_cpp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_cpp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
)

### Generating Services

### Generating Module File
_generate_module_cpp(turtlebot_action_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlebot_action_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlebot_action_server_generate_messages turtlebot_action_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_cpp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_cpp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_cpp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_cpp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_cpp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_cpp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_cpp _turtlebot_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_action_server_gencpp)
add_dependencies(turtlebot_action_server_gencpp turtlebot_action_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_action_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_eus(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_eus(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_eus(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_eus(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_eus(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_eus(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
)

### Generating Services

### Generating Module File
_generate_module_eus(turtlebot_action_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlebot_action_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlebot_action_server_generate_messages turtlebot_action_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_eus _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_eus _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_eus _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_eus _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_eus _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_eus _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_eus _turtlebot_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_action_server_geneus)
add_dependencies(turtlebot_action_server_geneus turtlebot_action_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_action_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_lisp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_lisp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_lisp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_lisp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_lisp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_lisp(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
)

### Generating Services

### Generating Module File
_generate_module_lisp(turtlebot_action_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlebot_action_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlebot_action_server_generate_messages turtlebot_action_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_lisp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_lisp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_lisp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_lisp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_lisp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_lisp _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_lisp _turtlebot_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_action_server_genlisp)
add_dependencies(turtlebot_action_server_genlisp turtlebot_action_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_action_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_nodejs(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_nodejs(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_nodejs(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_nodejs(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_nodejs(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_nodejs(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
)

### Generating Services

### Generating Module File
_generate_module_nodejs(turtlebot_action_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlebot_action_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlebot_action_server_generate_messages turtlebot_action_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_nodejs _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_nodejs _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_nodejs _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_nodejs _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_nodejs _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_nodejs _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_nodejs _turtlebot_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_action_server_gennodejs)
add_dependencies(turtlebot_action_server_gennodejs turtlebot_action_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_action_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_py(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_py(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_py(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_py(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_py(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
)
_generate_msg_py(turtlebot_action_server
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
)

### Generating Services

### Generating Module File
_generate_module_py(turtlebot_action_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlebot_action_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlebot_action_server_generate_messages turtlebot_action_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_py _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_py _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_py _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_py _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_py _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_py _turtlebot_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg" NAME_WE)
add_dependencies(turtlebot_action_server_generate_messages_py _turtlebot_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_action_server_genpy)
add_dependencies(turtlebot_action_server_genpy turtlebot_action_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_action_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_action_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(turtlebot_action_server_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(turtlebot_action_server_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_action_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(turtlebot_action_server_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(turtlebot_action_server_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_action_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(turtlebot_action_server_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(turtlebot_action_server_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_action_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot_action_server_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot_action_server_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_action_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(turtlebot_action_server_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(turtlebot_action_server_generate_messages_py std_msgs_generate_messages_py)
endif()
