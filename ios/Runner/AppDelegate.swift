import Flutter
import FirebaseCore
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

  var window: UIWindow?

  override func application(_ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions:
        [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
      FirebaseApp.configure()

      return true
    }
}
