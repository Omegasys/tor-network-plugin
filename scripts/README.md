# Automation Scripts

This directory contains automation scripts to help you set up and install the TOR network plugin on different platforms. The scripts handle the installation of dependencies, cloning the repository, and building the plugin.

## Scripts

- **`setup.sh`**: A setup script for Linux and macOS systems. It installs dependencies (such as TOR, Git, and build tools), clones the repository, and builds the project.
  
- **`setup.bat`**: A setup script for Windows. It installs TOR and Git using **Chocolatey**, clones the repository, and guides you through the build process in **Visual Studio**.

## Usage

### Linux/macOS

1. Make the script executable:
   ```bash
   chmod +x setup.sh
