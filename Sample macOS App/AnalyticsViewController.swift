import Cocoa
import AppCenterAnalytics

class AnalyticsViewController: NSViewController {
  
  @IBAction func simple(_ sender: Any) {
    MSAnalytics.trackEvent("Sample event")
    let alert = NSAlert()
    alert.messageText = "Event sent"
    alert.runModal()
  }
  
  @IBAction func color(_ sender: Any) {
    let alert = NSAlert()
    alert.messageText = "Choose a color"
    alert.addButton(withTitle: "💛 Yellow")
    alert.addButton(withTitle: "💙 Blue")
    alert.addButton(withTitle: "❤️ Red")
    switch alert.runModal() {
    case NSApplication.ModalResponse.alertFirstButtonReturn:
      MSAnalytics.trackEvent("Color event", withProperties: ["Color": "Yellow"])
    case NSApplication.ModalResponse.alertSecondButtonReturn:
      MSAnalytics.trackEvent("Color event", withProperties: ["Color": "Blue"])
    case NSApplication.ModalResponse.alertThirdButtonReturn:
      MSAnalytics.trackEvent("Color event", withProperties: ["Color": "Red"])
    default:
      break
    }
  }
}
