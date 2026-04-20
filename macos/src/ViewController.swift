// macos/src/ViewController.swift
import Cocoa

class ViewController: NSViewController {

    private var torVpnManager: TorVpnManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize the TOR VPN Manager
        torVpnManager = TorVpnManager()
    }

    // Action to start the VPN
    @IBAction func startVpnClicked(_ sender: NSButton) {
        torVpnManager?.startVpn()
    }

    // Action to stop the VPN
    @IBAction func stopVpnClicked(_ sender: NSButton) {
        torVpnManager?.stopVpn()
    }
}
