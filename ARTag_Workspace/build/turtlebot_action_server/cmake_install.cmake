# Install script for directory: /home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/turtlebot_action_server

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_action_server/action" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/turtlebot_action_server/action/burger_move.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_action_server/msg" TYPE FILE FILES
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveAction.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionGoal.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionResult.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveActionFeedback.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveGoal.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveResult.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/turtlebot_action_server/msg/burger_moveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_action_server/cmake" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/turtlebot_action_server/catkin_generated/installspace/turtlebot_action_server-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/include/turtlebot_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/roseus/ros/turtlebot_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/common-lisp/ros/turtlebot_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/gennodejs/ros/turtlebot_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/lib/python3/dist-packages/turtlebot_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/lib/python3/dist-packages/turtlebot_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/turtlebot_action_server/catkin_generated/installspace/turtlebot_action_server.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_action_server/cmake" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/turtlebot_action_server/catkin_generated/installspace/turtlebot_action_server-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_action_server/cmake" TYPE FILE FILES
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/turtlebot_action_server/catkin_generated/installspace/turtlebot_action_serverConfig.cmake"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/turtlebot_action_server/catkin_generated/installspace/turtlebot_action_serverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot_action_server" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/turtlebot_action_server/package.xml")
endif()

