import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}


// @UIApplicationMain
// @objc class AppDelegate: FlutterAppDelegate {
//   private static let CHANNEL = "com.example.webview/cookies"
//
//   override func application(
//     _ application: UIApplication,
//     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
//   ) -> Bool {
//     let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
//     let cookiesChannel = FlutterMethodChannel(name: AppDelegate.CHANNEL, binaryMessenger: controller.binaryMessenger)
//
//     cookiesChannel.setMethodCallHandler {
//       (call: FlutterMethodCall, result: @escaping FlutterResult) in
//       if call.method == "getCookies" {
//         let cookies = self.getCookies(url: "https://example.com")
//         result(cookies)
//       } else {
//         result(FlutterMethodNotImplemented)
//       }
//     }
//
//     return super.application(application, didFinishLaunchingWithOptions: launchOptions)
//   }
//
//   private func getCookies(url: String) -> String {
//     if let cookies = HTTPCookieStorage.shared.cookies(for: URL(string: url)!) {
//       return cookies.map { "\($0.name)=\($0.value)" }.joined(separator: "; ")
//     }
//     return ""
//   }
// }