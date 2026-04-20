# TOR Network Plugin for macOS

This is a simple macOS application that routes all network traffic through the TOR network. It starts a TOR service using the system’s installed `tor` executable and sets up the necessary network redirection.

## Features

- Start and stop the TOR service from a simple macOS application
- Routes all network traffic through the TOR network
- Simple user interface with buttons to start/stop the TOR VPN

## Prerequisites

- **TOR**: The application assumes that the `tor` executable is already installed on your macOS. You can install it using [Homebrew](https://brew.sh/), or manually from [TOR Project](https://www.torproject.org/).
- **macOS**: The plugin is designed to run on macOS (10.14+ recommended).
- **Xcode**: You will need Xcode installed to build the project.
- **Homebrew** (Optional): For easy installation of TOR and dependencies.

## Setup

### Step 1: Install TOR

Install `tor` via Homebrew:

```bash
brew install tor
