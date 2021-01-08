# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "casper: 3 messages, 0 services")

set(MSG_I_FLAGS "-Icasper:/home/ubuntu/catkin_ws/src/casper/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(casper_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg" NAME_WE)
add_custom_target(_casper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "casper" "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg" NAME_WE)
add_custom_target(_casper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "casper" "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg" NAME_WE)
add_custom_target(_casper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "casper" "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/casper
)
_generate_msg_cpp(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/casper
)
_generate_msg_cpp(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/casper
)

### Generating Services

### Generating Module File
_generate_module_cpp(casper
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/casper
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(casper_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(casper_generate_messages casper_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg" NAME_WE)
add_dependencies(casper_generate_messages_cpp _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg" NAME_WE)
add_dependencies(casper_generate_messages_cpp _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg" NAME_WE)
add_dependencies(casper_generate_messages_cpp _casper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(casper_gencpp)
add_dependencies(casper_gencpp casper_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS casper_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/casper
)
_generate_msg_eus(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/casper
)
_generate_msg_eus(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/casper
)

### Generating Services

### Generating Module File
_generate_module_eus(casper
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/casper
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(casper_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(casper_generate_messages casper_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg" NAME_WE)
add_dependencies(casper_generate_messages_eus _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg" NAME_WE)
add_dependencies(casper_generate_messages_eus _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg" NAME_WE)
add_dependencies(casper_generate_messages_eus _casper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(casper_geneus)
add_dependencies(casper_geneus casper_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS casper_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/casper
)
_generate_msg_lisp(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/casper
)
_generate_msg_lisp(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/casper
)

### Generating Services

### Generating Module File
_generate_module_lisp(casper
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/casper
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(casper_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(casper_generate_messages casper_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg" NAME_WE)
add_dependencies(casper_generate_messages_lisp _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg" NAME_WE)
add_dependencies(casper_generate_messages_lisp _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg" NAME_WE)
add_dependencies(casper_generate_messages_lisp _casper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(casper_genlisp)
add_dependencies(casper_genlisp casper_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS casper_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/casper
)
_generate_msg_nodejs(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/casper
)
_generate_msg_nodejs(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/casper
)

### Generating Services

### Generating Module File
_generate_module_nodejs(casper
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/casper
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(casper_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(casper_generate_messages casper_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg" NAME_WE)
add_dependencies(casper_generate_messages_nodejs _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg" NAME_WE)
add_dependencies(casper_generate_messages_nodejs _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg" NAME_WE)
add_dependencies(casper_generate_messages_nodejs _casper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(casper_gennodejs)
add_dependencies(casper_gennodejs casper_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS casper_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/casper
)
_generate_msg_py(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/casper
)
_generate_msg_py(casper
  "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/casper
)

### Generating Services

### Generating Module File
_generate_module_py(casper
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/casper
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(casper_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(casper_generate_messages casper_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/Encoder.msg" NAME_WE)
add_dependencies(casper_generate_messages_py _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/CurrentSensor.msg" NAME_WE)
add_dependencies(casper_generate_messages_py _casper_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/casper/msg/DualMotorController.msg" NAME_WE)
add_dependencies(casper_generate_messages_py _casper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(casper_genpy)
add_dependencies(casper_genpy casper_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS casper_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/casper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/casper
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(casper_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/casper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/casper
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(casper_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/casper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/casper
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(casper_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/casper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/casper
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(casper_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/casper)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/casper\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/casper
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(casper_generate_messages_py std_msgs_generate_messages_py)
endif()
