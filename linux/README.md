# TOR Network Plugin for Linux

This is a simple Linux application that routes all network traffic through the TOR network. It starts a TOR service using the system’s installed `tor` executable and sets up the necessary network redirection.

## Features

- Start and stop the TOR service from the command line
- Routes all network traffic through the TOR network
- Simple command-line interface for controlling the VPN

## Prerequisites

- **TOR**: The application assumes that the `tor` executable is already installed on your system. You can install it from your package manager or manually from [TOR Project](https://www.torproject.org/).
- **Linux**: This plugin is designed to run on Linux-based systems (Ubuntu, Fedora, etc.).
- **GCC** or **Clang**: To build the application.
- **Make**: For managing the build process.

## Setup

### Step 1: Install TOR

Make sure the `tor` executable is installed on your system. You can install it via your package manager:

For **Ubuntu/Debian**:
```bash
sudo apt update
sudo apt install tor
