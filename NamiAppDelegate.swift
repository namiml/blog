import Nami
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func namiSetup() {
         let namiConfig = NamiConfiguration(appPlatformID: "YOUR_NAMI_APP_ID_HERE")        
        Nami.configure(namiConfig: namiConfig )
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        namiSetup()
        return true
    }
}
