# windows/CMakeLists.txt
cmake_minimum_required(VERSION 3.10)

project(TorNetworkPluginWindows)

# Set the C++ standard to C++17 (for modern C++ features)
set(CMAKE_CXX_STANDARD 17)

# Define the output directory for built binaries
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Add source files
set(SOURCES
    src/TorVpnManager.cpp
    src/TorService.cpp
    src/main.cpp
)

# Find required packages (e.g., Tor dependencies)
find_package(Boost REQUIRED)

# Specify the Windows-specific libraries
if(WIN32)
    add_definitions(-DWIN32_LEAN_AND_MEAN)
    add_definitions(-DNOMINMAX)
    include_directories(${CMAKE_SOURCE_DIR}/include)
    set(ADD_LDFLAGS)
endif()

# Include directories
include_directories(${CMAKE_SOURCE_DIR}/include)

# Add executable for the plugin
add_executable(TorNetworkPluginWindows ${SOURCES})

# Link libraries (e.g., Boost, Tor)
target_link_libraries(TorNetworkPluginWindows Boost::Boost)
