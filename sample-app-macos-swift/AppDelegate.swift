import Cocoa
import MobileCenter
import MobileCenterAnalytics
import MobileCenterCrashes
import MobileCenterPush

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
  
  var rootController: NSWindowController!
  
  func applicationDidFinishLaunching(_ notification: Notification) {

    // Start mobile center
    MSMobileCenter.start("<APP SECRET HERE>", withServices: [
      MSAnalytics.self,
      MSCrashes.self,
      MSPush.self,
    ])
    
    initUI()
  }
  
  func initUI() {
    let mainStoryboard = NSStoryboard.init(name: "Main", bundle: nil)
    rootController = mainStoryboard.instantiateController(withIdentifier: "rootController") as! NSWindowController
    rootController.showWindow(self)
    rootController.window?.makeKeyAndOrderFront(self)
  }
}
