# CMakeList.txt : CMake project for LearningOpenGL, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

# Enable Hot Reload for MSVC compilers if supported.
if (POLICY CMP0141)
  cmake_policy(SET CMP0141 NEW)
  set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project ("LearningOpenGL")

# Add source to this project's executable.
add_executable (LearningOpenGL "glad.c" "main.cpp")

if (CMAKE_VERSION VERSION_GREATER 3.12)
  set_property(TARGET LearningOpenGL PROPERTY CXX_STANDARD 20)
endif()

# TODO: Add tests and install targets if needed.
include_directories("C:/Users/skanu/glfw/include")
link_directories("C:/Users/skanu/glfw/lib")
target_link_libraries(LearningOpenGL "C:/Users/skanu/glfw/lib/glfw3dll.lib")
# include the libraries for glad
include_directories("C:/Users/skanu/glad/include")

find_package(OpenGL REQUIRED)
target_link_libraries(LearningOpenGL OpenGL::GL)