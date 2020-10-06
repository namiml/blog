import Nami
class AboutViewController: UIViewController {
    @IBAction func donateTapped(_ sender: Any) {
        NamiPaywallManager.raisePaywall(fromVC: self)
    }
}
