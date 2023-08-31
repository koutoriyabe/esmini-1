# Install script for directory: /home/kotoriyabe/esmini/EnvironmentSimulator

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Modules/CommonMini/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Modules/Controllers/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Modules/PlayerBase/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Modules/RoadManager/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Modules/ScenarioEngine/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Modules/ViewerBase/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiLib/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Libraries/esminiRMLib/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Applications/esmini/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Applications/esmini-dyn/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Applications/odrviewer/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Applications/odrplot/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Applications/replayer/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/code-examples/cmake_install.cmake")
  include("/home/kotoriyabe/esmini/build/EnvironmentSimulator/Unittest/cmake_install.cmake")

endif()

