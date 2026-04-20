// linux/src/TorVpnManager.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "TorVpnManager.h"

// Start the TOR service
void start_vpn() {
    printf("Starting TOR VPN...\n");

    // Assuming tor is installed in the default system path
    int ret = system("tor &");  // Start TOR in the background
    if (ret == 0) {
        printf("TOR service started successfully.\n");
    } else {
        fprintf(stderr, "Failed to start TOR service.\n");
    }
}

// Stop the TOR service
void stop_vpn() {
    printf("Stopping TOR VPN...\n");

    // Kill the TOR process (This can be improved by using a more robust method, e.g., checking for the TOR process ID)
    int ret = system("pkill tor");  // Kill the TOR process
    if (ret == 0) {
        printf("TOR service stopped successfully.\n");
    } else {
        fprintf(stderr, "Failed to stop TOR service.\n");
    }
}
