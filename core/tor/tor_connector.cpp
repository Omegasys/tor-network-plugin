// core/tor/tor_connector.cpp
#include <iostream>
#include <cstdlib>

class TorConnector {
public:
    // Constructor
    TorConnector() {
        std::cout << "TOR Connector initialized" << std::endl;
    }

    // Start TOR using the tor command line
    void startTorService() {
        std::cout << "Starting TOR service..." << std::endl;
        int result = std::system("tor &");  // Assumes `tor` is installed in PATH
        if (result == 0) {
            std::cout << "TOR service started successfully." << std::endl;
        } else {
            std::cerr << "Failed to start TOR service." << std::endl;
        }
    }

    // Stop TOR by killing the process
    void stopTorService() {
        std::cout << "Stopping TOR service..." << std::endl;
        int result = std::system("pkill tor");  // Kills the TOR process
        if (result == 0) {
            std::cout << "TOR service stopped successfully." << std::endl;
        } else {
            std::cerr << "Failed to stop TOR service." << std::endl;
        }
    }
};

int main() {
    TorConnector tor;
    tor.startTorService();  // Start the TOR service
    // Add delay or some other logic here if you want to stop the service after some time
    tor.stopTorService();  // Stop the TOR service
    return 0;
}
