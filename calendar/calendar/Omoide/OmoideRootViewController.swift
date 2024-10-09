
import UIKit

class OmoideRootViewController: UIViewController {
    
    private(set) lazy var searchRootView = OmoideRootView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "おもいで"
        self.view.addSubview(searchRootView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        searchRootView.frame = view.bounds.inset(by: view.safeAreaInsets)
    }
}
