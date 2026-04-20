# core/tor/tor_service.py
import os
import subprocess
import sys

class TorService:
    def __init__(self):
        self.tor_process = None

    def start(self):
        """Start the TOR service."""
        print("Starting TOR service...")
        try:
            # Launch the TOR process in the background
            self.tor_process = subprocess.Popen(['tor'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            print("TOR service started successfully.")
        except Exception as e:
            print(f"Failed to start TOR service: {e}")

    def stop(self):
        """Stop the TOR service."""
        if self.tor_process:
            print("Stopping TOR service...")
            self.tor_process.terminate()  # Terminate the TOR process
            self.tor_process = None
            print("TOR service stopped successfully.")
        else:
            print("TOR service is not running.")

if __name__ == "__main__":
    tor_service = TorService()
    if len(sys.argv) > 1 and sys.argv[1] == "start":
        tor_service.start()
    elif len(sys.argv) > 1 and sys.argv[1] == "stop":
        tor_service.stop()
    else:
        print("Usage: python tor_service.py [start|stop]")
