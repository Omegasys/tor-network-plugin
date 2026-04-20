#!/bin/bash

# setup.sh - Setup script for Linux/macOS
# Usage: Run this script to install dependencies and build the plugin

# Exit on any error
set -e

# Ensure the script is being run as root (for installing packages)
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

# Install required dependencies
echo "Installing dependencies..."

# Update package list and install tor (Linux)
if [[ "$(uname)" == "Linux" ]]; then
    if [ -x "$(command -v apt)" ]; then
        sudo apt update
        sudo apt install -y tor git build-essential cmake
    elif [ -x "$(command -v dnf)" ]; then
        sudo dnf install -y tor git make gcc-c++ cmake
    elif [ -x "$(command -v pacman)" ]; then
        sudo pacman -S tor git base-devel cmake
    else
        echo "Unsupported Linux distribution. Please install tor manually."
        exit 1
    fi
fi

# Install tor (macOS)
if [[ "$(uname)" == "Darwin" ]]; then
    echo "Installing TOR using Homebrew..."
    if ! command -v brew &> /dev/null; then
        echo "Homebrew is not installed. Please install Homebrew first."
        exit 1
    fi
    brew install tor
fi

# Clone the repository if not already cloned
if [ ! -d "tor-network-plugin" ]; then
    echo "Cloning the repository..."
    git clone https://github.com/yourusername/tor-network-plugin.git
fi

# Navigate to the cloned repository
cd tor-network-plugin

# Build the project (for Linux, use Makefile; for macOS, use Xcode)
if [[ "$(uname)" == "Linux" ]]; then
    echo "Building the plugin on Linux..."
    cd linux
    make
elif [[ "$(uname)" == "Darwin" ]]; then
    echo "Building the plugin on macOS..."
    cd macos
    open TorNetworkPlugin.xcodeproj
    echo "Open the project in Xcode and build it manually."
fi

echo "Setup complete! You can now run the plugin."
