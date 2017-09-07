import Cocoa

class ViewController: NSViewController {
  
  @IBOutlet weak var back: NSButton!
  @IBOutlet weak var forward: NSButton!
  @IBOutlet weak var container: NSView!
  
  var pageController: NSPageController? {
    get {
      return container.subviews.first?.nextResponder as? NSPageController
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    udpateButtons()
  }
  
  func udpateButtons() {
    let selectedIndex = pageController?.selectedIndex ?? 0
    let count = pageController?.arrangedObjects.count ?? Int.max
    
    back.isHidden = selectedIndex <= 0
    forward.isHidden = selectedIndex >= count - 1
  }
  
  @IBAction func navigateBack(_ sender: Any) {
    pageController?.navigateBack(sender)
    udpateButtons()
  }
  
  @IBAction func navigateForward(_ sender: Any) {
    pageController?.navigateForward(sender)
    udpateButtons()
  }
}
