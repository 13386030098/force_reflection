# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "force_msg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iforce_msg:/home/zzz/force_reflection/src/force_msg/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(force_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zzz/force_reflection/src/force_msg/msg/Force.msg" NAME_WE)
add_custom_target(_force_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "force_msg" "/home/zzz/force_reflection/src/force_msg/msg/Force.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(force_msg
  "/home/zzz/force_reflection/src/force_msg/msg/Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(force_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(force_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(force_msg_generate_messages force_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzz/force_reflection/src/force_msg/msg/Force.msg" NAME_WE)
add_dependencies(force_msg_generate_messages_cpp _force_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_msg_gencpp)
add_dependencies(force_msg_gencpp force_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(force_msg
  "/home/zzz/force_reflection/src/force_msg/msg/Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(force_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(force_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(force_msg_generate_messages force_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzz/force_reflection/src/force_msg/msg/Force.msg" NAME_WE)
add_dependencies(force_msg_generate_messages_eus _force_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_msg_geneus)
add_dependencies(force_msg_geneus force_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(force_msg
  "/home/zzz/force_reflection/src/force_msg/msg/Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(force_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(force_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(force_msg_generate_messages force_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzz/force_reflection/src/force_msg/msg/Force.msg" NAME_WE)
add_dependencies(force_msg_generate_messages_lisp _force_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_msg_genlisp)
add_dependencies(force_msg_genlisp force_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(force_msg
  "/home/zzz/force_reflection/src/force_msg/msg/Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/force_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(force_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/force_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(force_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(force_msg_generate_messages force_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzz/force_reflection/src/force_msg/msg/Force.msg" NAME_WE)
add_dependencies(force_msg_generate_messages_nodejs _force_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_msg_gennodejs)
add_dependencies(force_msg_gennodejs force_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(force_msg
  "/home/zzz/force_reflection/src/force_msg/msg/Force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_msg
)

### Generating Services

### Generating Module File
_generate_module_py(force_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(force_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(force_msg_generate_messages force_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzz/force_reflection/src/force_msg/msg/Force.msg" NAME_WE)
add_dependencies(force_msg_generate_messages_py _force_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_msg_genpy)
add_dependencies(force_msg_genpy force_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(force_msg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(force_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(force_msg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(force_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(force_msg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(force_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/force_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/force_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(force_msg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(force_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(force_msg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(force_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
