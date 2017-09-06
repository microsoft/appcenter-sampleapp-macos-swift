import Cocoa

class ViewController: NSViewController {
  
  @IBOutlet weak var container: NSView!
  var pageController: NSPageController? {
    get {
      return container.subviews.first?.nextResponder as? NSPageController
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func navigateForward(_ sender: Any) {
    pageController?.navigateForward(sender)
  }
}
