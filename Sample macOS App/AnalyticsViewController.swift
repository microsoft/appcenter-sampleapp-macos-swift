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
    case NSAlertFirstButtonReturn:
      MSAnalytics.trackEvent("Color event", withProperties: ["Color": "Yellow"])
    case NSAlertSecondButtonReturn:
      MSAnalytics.trackEvent("Color event", withProperties: ["Color": "Blue"])
    case NSAlertThirdButtonReturn:
      MSAnalytics.trackEvent("Color event", withProperties: ["Color": "Red"])
    default:
      break
    }
  }
}
