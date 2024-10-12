cmake_minimum_required(VERSION 3.10)
# Set the project name
project(AStarProject)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Specify the source files
set(SOURCES
    main.cpp
    a_star.cpp
)

# Create an executable
add_executable(AStarProject ${SOURCES})

# Optionally, set the output directory for the executable
set_target_properties(AStarProject PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
