# Install script for directory: /home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/face_detector

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_detector/action" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/face_detector/action/FaceDetector.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_detector/msg" TYPE FILE FILES
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/face_detector/msg/FaceDetectorAction.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/face_detector/msg/FaceDetectorActionGoal.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/face_detector/msg/FaceDetectorActionResult.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/face_detector/msg/FaceDetectorActionFeedback.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/face_detector/msg/FaceDetectorGoal.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/face_detector/msg/FaceDetectorResult.msg"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/face_detector/msg/FaceDetectorFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_detector/cmake" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/face_detector/catkin_generated/installspace/face_detector-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/include/face_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/roseus/ros/face_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/common-lisp/ros/face_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/share/gennodejs/ros/face_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/lib/python3/dist-packages/face_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/lib/python3/dist-packages/face_detector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/face_detector/catkin_generated/installspace/face_detector.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_detector/cmake" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/face_detector/catkin_generated/installspace/face_detector-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_detector/cmake" TYPE FILE FILES
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/face_detector/catkin_generated/installspace/face_detectorConfig.cmake"
    "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/face_detector/catkin_generated/installspace/face_detectorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_detector" TYPE FILE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/face_detector/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/face_detector/face_detector" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/face_detector/face_detector")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/face_detector/face_detector"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/face_detector" TYPE EXECUTABLE FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/devel/lib/face_detector/face_detector")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/face_detector/face_detector" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/face_detector/face_detector")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/face_detector/face_detector"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/face_detector/face_detector")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/face_detector" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/face_detector/include/face_detector/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_detector/" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/face_detector/param")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_detector/" TYPE DIRECTORY FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/src/people-noetic/face_detector/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/face_detector" TYPE PROGRAM FILES "/home/cc/ee106a/fa22/class/ee106a-agf/eecs106a-final-project/ARTag_Workspace/build/people-noetic/face_detector/catkin_generated/installspace/face_detector_action_client.py")
endif()

