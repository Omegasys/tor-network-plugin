// ios/src/MainViewController.swift
import UIKit

class MainViewController: UIViewController {

    private var torVpnManager: TorVpnManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        torVpnManager = TorVpnManager()
    }

    @IBAction func startVpnTapped(_ sender: UIButton) {
        torVpnManager?.startVpn()
        showAlert(message: "TOR VPN Started!")
    }

    @IBAction func stopVpnTapped(_ sender: UIButton) {
        torVpnManager?.stopVpn()
        showAlert(message: "TOR VPN Stopped!")
    }

    private func showAlert(message: String) {
        let alertController = UIAlertController(title: "VPN Status", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true, completion: nil)
    }
}
