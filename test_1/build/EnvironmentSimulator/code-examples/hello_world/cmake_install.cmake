# Install script for directory: /home/kotoriyabe/esmini/EnvironmentSimulator/code-examples/hello_world

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw2_arguments" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw2_arguments")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw2_arguments"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/code-examples-bin/hw2_arguments")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/code-examples-bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/code-examples/hello_world/hw2_arguments")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw2_arguments" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw2_arguments")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw2_arguments"
         OLD_RPATH "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiLib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw2_arguments")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw3_fetch_states" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw3_fetch_states")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw3_fetch_states"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/code-examples-bin/hw3_fetch_states")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/code-examples-bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/code-examples/hello_world/hw3_fetch_states")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw3_fetch_states" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw3_fetch_states")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw3_fetch_states"
         OLD_RPATH "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiLib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw3_fetch_states")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw4_external_ego_control" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw4_external_ego_control")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw4_external_ego_control"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/code-examples-bin/hw4_external_ego_control")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/code-examples-bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/code-examples/hello_world/hw4_external_ego_control")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw4_external_ego_control" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw4_external_ego_control")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw4_external_ego_control"
         OLD_RPATH "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiLib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw4_external_ego_control")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw5_control_controllers_enabled" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw5_control_controllers_enabled")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw5_control_controllers_enabled"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/code-examples-bin/hw5_control_controllers_enabled")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/code-examples-bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/code-examples/hello_world/hw5_control_controllers_enabled")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw5_control_controllers_enabled" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw5_control_controllers_enabled")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw5_control_controllers_enabled"
         OLD_RPATH "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiLib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw5_control_controllers_enabled")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw6_control_controllers_disabled" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw6_control_controllers_disabled")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw6_control_controllers_disabled"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/code-examples-bin/hw6_control_controllers_disabled")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/code-examples-bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/code-examples/hello_world/hw6_control_controllers_disabled")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw6_control_controllers_disabled" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw6_control_controllers_disabled")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw6_control_controllers_disabled"
         OLD_RPATH "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiLib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw6_control_controllers_disabled")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw7_ideal_sensors" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw7_ideal_sensors")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw7_ideal_sensors"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/code-examples-bin/hw7_ideal_sensors")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/code-examples-bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/code-examples/hello_world/hw7_ideal_sensors")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw7_ideal_sensors" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw7_ideal_sensors")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw7_ideal_sensors"
         OLD_RPATH "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiLib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw7_ideal_sensors")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw8_collision_detection" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw8_collision_detection")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw8_collision_detection"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/code-examples-bin/hw8_collision_detection")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/code-examples-bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/code-examples/hello_world/hw8_collision_detection")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw8_collision_detection" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw8_collision_detection")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw8_collision_detection"
         OLD_RPATH "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiLib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/code-examples-bin/hw8_collision_detection")
    endif()
  endif()
endif()

