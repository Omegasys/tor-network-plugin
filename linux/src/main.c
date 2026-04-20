// linux/src/main.c
#include <stdio.h>
#include "TorVpnManager.h"

int main() {
    int choice;

    while (1) {
        printf("\nTOR Network Plugin for Linux\n");
        printf("1. Start VPN\n");
        printf("2. Stop VPN\n");
        printf("3. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
        case 1:
            start_vpn();
            break;
        case 2:
            stop_vpn();
            break;
        case 3:
            printf("Exiting program...\n");
            return 0;
        default:
            printf("Invalid choice, try again.\n");
            break;
        }
    }

    return 0;
}
