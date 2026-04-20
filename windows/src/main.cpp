// windows/src/main.cpp
#include <iostream>
#include "TorVpnManager.h"

int main() {
    TorVpnManager vpnManager;

    std::cout << "Welcome to the TOR VPN Plugin!" << std::endl;

    int choice;
    while (true) {
        std::cout << "\n1. Start VPN\n2. Stop VPN\n3. Exit\n";
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        switch (choice) {
        case 1:
            vpnManager.startVpn();
            break;
        case 2:
            vpnManager.stopVpn();
            break;
        case 3:
            std::cout << "Exiting program..." << std::endl;
            return 0;
        default:
            std::cout << "Invalid choice, try again." << std::endl;
            break;
        }
    }

    return 0;
}
