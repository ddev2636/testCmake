cmake_minimum_required(VERSION 3.10) # Specify the minimum CMake version required
project(TestLibrary) # Name your project

# Find the installed library(named Library)
find_package(Library REQUIRED)

# Add the executable for testing
add_executable(TestApp main.cpp)

# Link the library to the executable
target_link_libraries(TestApp PRIVATE ${Library_LIBRARIES})

# Custom target to delete the entire build directory
add_custom_target(clean-build
    COMMAND ${CMAKE_COMMAND} -E remove_directory ${CMAKE_BINARY_DIR}
    COMMENT "Deleting the entire build directory"
)
