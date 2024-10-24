#!/bin/bash

# Create and clean the build directory
if [ -d "build" ]; then
    echo "Cleaning existing build directory..."
    rm -rf build
fi

# Create a fresh build directory
mkdir build
cd build

# Install the .deb package using dpkg
echo "Installing CMakeTut-4.0-Linux.deb..."
sudo dpkg -i ../CMakeTut-4.0-Linux.deb

# Run CMake with the specified prefix path
echo "Running CMake..."
cmake .. -DCMAKE_PREFIX_PATH=/usr/lib/cmake/LMS/

# Compile the project
echo "Building the project..."
make
