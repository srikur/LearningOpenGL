# glfw3Config.cmake

# Compute the installation prefix from this file's location.
get_filename_component(GLFW3_INSTALL_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(GLFW3_INSTALL_CMAKE_DIR "${GLFW3_INSTALL_CMAKE_DIR}" PATH)
get_filename_component(GLFW3_INSTALL_CMAKE_DIR "${GLFW3_INSTALL_CMAKE_DIR}" PATH)

# Create the GLFW3Config.cmake and GLFW3ConfigVersion files
file(RELATIVE_PATH REL_INCLUDE_DIR "${GLFW3_INSTALL_CMAKE_DIR}"
   "${GLFW3_INSTALL_INCLUDE_DIR}")

   # ... for the build tree
   set(CONF_INCLUDE_DIRS "${GLFW3_SOURCE_DIR}" "${GLFW3_BINARY_DIR}")
   configure_file(glfw3Config.cmake.in
	  "${GLFW3_BINARY_DIR}/glfw3Config.cmake" @ONLY)

	  # ... for the install tree
	  set(CONF_INCLUDE_DIRS "\${GLFW3_CMAKE_DIR}/${REL_INCLUDE_DIR}")
	  configure_file(glfw3Config.cmake.in
	  "${GLFW3_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/glfw3Config.cmake" @ONLY)

