# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "burger_move_action: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iburger_move_action:/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(burger_move_action_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg" NAME_WE)
add_custom_target(_burger_move_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "burger_move_action" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg" "burger_move_action/Burger_moveResult:actionlib_msgs/GoalID:burger_move_action/Burger_moveActionGoal:burger_move_action/Burger_moveFeedback:std_msgs/Header:burger_move_action/Burger_moveGoal:burger_move_action/Burger_moveActionResult:burger_move_action/Burger_moveActionFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg" NAME_WE)
add_custom_target(_burger_move_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "burger_move_action" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:burger_move_action/Burger_moveGoal"
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg" NAME_WE)
add_custom_target(_burger_move_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "burger_move_action" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg" "burger_move_action/Burger_moveResult:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg" NAME_WE)
add_custom_target(_burger_move_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "burger_move_action" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg" "burger_move_action/Burger_moveFeedback:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg" NAME_WE)
add_custom_target(_burger_move_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "burger_move_action" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg" ""
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg" NAME_WE)
add_custom_target(_burger_move_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "burger_move_action" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg" ""
)

get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg" NAME_WE)
add_custom_target(_burger_move_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "burger_move_action" "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
)
_generate_msg_cpp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
)
_generate_msg_cpp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
)
_generate_msg_cpp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
)
_generate_msg_cpp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
)
_generate_msg_cpp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
)
_generate_msg_cpp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
)

### Generating Services

### Generating Module File
_generate_module_cpp(burger_move_action
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(burger_move_action_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(burger_move_action_generate_messages burger_move_action_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_cpp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_cpp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_cpp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_cpp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_cpp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_cpp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_cpp _burger_move_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(burger_move_action_gencpp)
add_dependencies(burger_move_action_gencpp burger_move_action_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS burger_move_action_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
)
_generate_msg_eus(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
)
_generate_msg_eus(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
)
_generate_msg_eus(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
)
_generate_msg_eus(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
)
_generate_msg_eus(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
)
_generate_msg_eus(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
)

### Generating Services

### Generating Module File
_generate_module_eus(burger_move_action
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(burger_move_action_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(burger_move_action_generate_messages burger_move_action_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_eus _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_eus _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_eus _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_eus _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_eus _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_eus _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_eus _burger_move_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(burger_move_action_geneus)
add_dependencies(burger_move_action_geneus burger_move_action_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS burger_move_action_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
)
_generate_msg_lisp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
)
_generate_msg_lisp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
)
_generate_msg_lisp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
)
_generate_msg_lisp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
)
_generate_msg_lisp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
)
_generate_msg_lisp(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
)

### Generating Services

### Generating Module File
_generate_module_lisp(burger_move_action
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(burger_move_action_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(burger_move_action_generate_messages burger_move_action_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_lisp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_lisp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_lisp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_lisp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_lisp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_lisp _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_lisp _burger_move_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(burger_move_action_genlisp)
add_dependencies(burger_move_action_genlisp burger_move_action_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS burger_move_action_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
)
_generate_msg_nodejs(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
)
_generate_msg_nodejs(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
)
_generate_msg_nodejs(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
)
_generate_msg_nodejs(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
)
_generate_msg_nodejs(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
)
_generate_msg_nodejs(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
)

### Generating Services

### Generating Module File
_generate_module_nodejs(burger_move_action
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(burger_move_action_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(burger_move_action_generate_messages burger_move_action_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_nodejs _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_nodejs _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_nodejs _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_nodejs _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_nodejs _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_nodejs _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_nodejs _burger_move_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(burger_move_action_gennodejs)
add_dependencies(burger_move_action_gennodejs burger_move_action_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS burger_move_action_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
)
_generate_msg_py(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
)
_generate_msg_py(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
)
_generate_msg_py(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
)
_generate_msg_py(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
)
_generate_msg_py(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
)
_generate_msg_py(burger_move_action
  "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
)

### Generating Services

### Generating Module File
_generate_module_py(burger_move_action
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(burger_move_action_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(burger_move_action_generate_messages burger_move_action_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveAction.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_py _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_py _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_py _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveActionFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_py _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveGoal.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_py _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveResult.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_py _burger_move_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/burger_move_action/msg/Burger_moveFeedback.msg" NAME_WE)
add_dependencies(burger_move_action_generate_messages_py _burger_move_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(burger_move_action_genpy)
add_dependencies(burger_move_action_genpy burger_move_action_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS burger_move_action_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/burger_move_action
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(burger_move_action_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(burger_move_action_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/burger_move_action
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(burger_move_action_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(burger_move_action_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/burger_move_action
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(burger_move_action_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(burger_move_action_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/burger_move_action
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(burger_move_action_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(burger_move_action_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/burger_move_action
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(burger_move_action_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(burger_move_action_generate_messages_py std_msgs_generate_messages_py)
endif()
