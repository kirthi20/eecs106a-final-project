# Install script for directory: /home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/people_velocity_tracker

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/people_velocity_tracker/catkin_generated/installspace/people_velocity_tracker.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/people_velocity_tracker/cmake" TYPE FILE FILES
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/people_velocity_tracker/catkin_generated/installspace/people_velocity_trackerConfig.cmake"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/people_velocity_tracker/catkin_generated/installspace/people_velocity_trackerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/people_velocity_tracker" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/people_velocity_tracker/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/people_velocity_tracker/launch" TYPE FILE FILES
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/people_velocity_tracker/launch/filtered_tracked_detector.launch"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/people_velocity_tracker/launch/tracked_detector.launch"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/people_velocity_tracker" TYPE PROGRAM FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/people_velocity_tracker/catkin_generated/installspace/static.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/people_velocity_tracker" TYPE PROGRAM FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/people_velocity_tracker/catkin_generated/installspace/tracker.py")
endif()

