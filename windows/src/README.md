# TOR Network Plugin for Windows

This project provides a Windows application that routes all network traffic through the TOR network using a VPN tunnel. It uses the Windows API to manage the VPN and TOR connection.

## Features

- Routes all network traffic through TOR via VPN
- Simple console interface for starting and stopping the VPN service
- Uses external TOR executable to manage the TOR service

## Prerequisites

- CMake (for building the project)
- A Windows environment with **TOR** installed (download from [https://www.torproject.org/](https://www.torproject.org/))
- Visual Studio or any compatible C++ compiler for building the project

## Setup

### Step 1: Clone the repository

```bash
git clone https://github.com/yourusername/tor-network-plugin.git
cd tor-network-plugin/windows
