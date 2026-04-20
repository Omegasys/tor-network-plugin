# core/utils/system_utils.py

import os
import subprocess

def check_command_availability(command: str) -> bool:
    """Check if a command is available in the system's PATH."""
    result = subprocess.run(["which", command], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    return result.returncode == 0

def ensure_directory_exists(path: str):
    """Ensure that a directory exists, create it if it doesn't."""
    if not os.path.exists(path):
        os.makedirs(path)
        print(f"Directory '{path}' created.")
    else:
        print(f"Directory '{path}' already exists.")
