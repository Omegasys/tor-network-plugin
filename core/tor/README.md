# TOR Network Integration

This directory contains the core logic for interacting with the TOR network, including starting and stopping the TOR service.

## Files

- **tor_connector.cpp**: C++ class to interact with the TOR service. It provides functions to start and stop the TOR service via system calls.
- **tor_service.py**: Python script to control the TOR service. It allows you to start and stop the TOR process cross-platform using the `subprocess` module.

## Dependencies

- **C++**: The `tor_connector.cpp` file assumes that the `tor` executable is installed and available in the system's `PATH`.
- **Python**: The `tor_service.py` script assumes that Python 3 is installed.

## Usage

### Using C++ (tor_connector.cpp)

Compile the C++ file with a C++ compiler:

```bash
g++ -o tor_connector tor_connector.cpp
./tor_connector
