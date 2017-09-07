import Cocoa
import MobileCenter
import MobileCenterAnalytics
import MobileCenterCrashes
import MobileCenterPush

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
  
  override init() {
    super.init()
    
    // Start mobile center
    MSMobileCenter.start("<APP SECRET HERE>", withServices: [
      MSAnalytics.self,
      MSCrashes.self,
      MSPush.self,
    ])
  }
}

