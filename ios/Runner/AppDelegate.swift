import Flutter
import FirebaseCore
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {


  override func application(_ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      FirebaseApp.configure()

      return true
    }
}
