import Cocoa
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import AppCenterPush

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSPageControllerDelegate {

  @IBOutlet weak var window: NSWindow!
  @IBOutlet weak var pageController: NSPageController!

  private var services: [String] = [ "Welcome", "Build", "Test", "Crashes", "Analytics", "Push"]

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Start App Center
    MSAppCenter.start("<APP SECRET HERE>", withServices: [
      MSAnalytics.self,
      MSCrashes.self,
      MSPush.self,
    ])

    pageController.arrangedObjects = services
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

  // NSPageController delegate
  func pageController(_ pageController: NSPageController, identifierFor object: Any) -> String {
    return object as! String
  }

  func pageController(_ pageController: NSPageController, viewControllerForIdentifier identifier: String) -> NSViewController {
    switch identifier {
    case "Crashes":
        return CrashViewController(nibName: identifier, bundle: nil)
    case "Analytics":
        return AnalyticsViewController(nibName: identifier, bundle: nil)
    default:
        return NSViewController(nibName: identifier, bundle: nil)
    }
  }
}

