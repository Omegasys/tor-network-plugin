@echo off
:: setup.bat - Setup script for Windows
:: Usage: Run this script to install dependencies and build the plugin

:: Check if the script is being run as administrator (required for installing packages)
openfiles >nul 2>nul
if %errorlevel% neq 0 (
    echo This script must be run as Administrator.
    pause
    exit /b
)

:: Install dependencies (e.g., Git, TOR)
echo Installing dependencies...

:: Check if Chocolatey is installed (Windows package manager)
where choco >nul 2>nul
if %errorlevel% neq 0 (
    echo Installing Chocolatey...
    set "url=https://community.chocolatey.org/install.ps1"
    powershell -NoProfile -ExecutionPolicy Bypass -Command "(new-object System.Net.WebClient).DownloadString('%url%')" | powershell
)

:: Install TOR using Chocolatey
echo Installing TOR...
choco install tor

:: Install Git (if not already installed)
echo Installing Git...
choco install git

:: Clone the repository if not already cloned
if not exist "tor-network-plugin" (
    echo Cloning the repository...
    git clone https://github.com/yourusername/tor-network-plugin.git
)

:: Navigate to the cloned repository
cd tor-network-plugin

:: Build the project (Windows)
echo Building the plugin on Windows...
cd windows
:: Assuming Visual Studio or other build tools are set up
echo Open the project in Visual Studio and build it manually.
pause

echo Setup complete! You can now run the plugin.
