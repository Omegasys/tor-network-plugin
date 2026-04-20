# Troubleshooting

If you encounter issues with the TOR network plugin, follow the solutions below for common problems.

---

## Problem 1: TOR Service Fails to Start

### Solution:
1. **Check if `tor` is installed**:
   - Ensure that the `tor` executable is installed and available in your system’s `PATH`. You can check this by running:
     ```bash
     tor --version
     ```
   - If `tor` is not found, install it using the instructions from the [installation guide](installation.md).

2. **Check Permissions**:
   - Ensure the plugin has the necessary permissions to start and stop the TOR service. You may need to run the application with elevated privileges (e.g., using `sudo` on Linux/macOS).

3. **Check the TOR Log**:
   - Look for any error messages in the TOR logs. On Linux/macOS, you can typically find the logs in `/var/log/tor/`.

---

## Problem 2: TOR Service is Not Connecting

### Solution:
1. **Check Your Internet Connection**:
   - Ensure that your device has an active internet connection. TOR needs an active network connection to route traffic.

2. **Firewall or VPN Issues**:
   - Some firewalls or VPN services may block TOR traffic. Ensure that your firewall or network configuration is not interfering with TOR's operation.

3. **Check the `torrc` Configuration**:
   - If you have modified the TOR configuration file (`torrc`), ensure that there are no errors. Refer to the [TOR configuration guide](https://2019.www.torproject.org/docs/tor-doc-relay.html.en) for help.

---

## Problem 3: Logs Are Not Appearing

### Solution:
1. **Check Logging Settings**:
   - Ensure that the logging level is set correctly in the configuration file (`config/config.json`). You can adjust the logging level to **DEBUG** for more detailed logs.

2. **Check File Permissions**:
   - Ensure that the
