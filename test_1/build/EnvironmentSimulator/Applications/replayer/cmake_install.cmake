# Install script for directory: /home/kotoriyabe/esmini/EnvironmentSimulator/Applications/replayer

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
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/replayer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/replayer")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/replayer"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/bin/replayer")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Applications/replayer/replayer")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/replayer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/replayer")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/replayer")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/dat2csv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/dat2csv")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/dat2csv"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/bin/dat2csv")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Applications/replayer/dat2csv")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/dat2csv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/dat2csv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/dat2csv")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/osireceiver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/osireceiver")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/osireceiver"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kotoriyabe/esmini/bin/osireceiver")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kotoriyabe/esmini/bin" TYPE EXECUTABLE FILES "/home/kotoriyabe/esmini/build/EnvironmentSimulator/Applications/replayer/osireceiver")
  if(EXISTS "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/osireceiver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/osireceiver")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/kotoriyabe/esmini/bin/osireceiver")
    endif()
  endif()
endif()

