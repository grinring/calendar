
import UIKit

class CalendarRootViewController: UIViewController {
    
    private(set) lazy var caldenderRootView = CalendarRootView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(caldenderRootView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        caldenderRootView.frame = view.bounds.inset(by: view.safeAreaInsets)
        caldenderRootView.setupLayout()
    }

}
