
import UIKit

class ScheduleRootViewController: UIViewController {
    
    private let scheduleRootView = ScheduleRootView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        //returnedForeground()
        NotificationCenter.default.addObserver(scheduleRootView,
                                               selector: #selector(scheduleRootView.updateLayout),
                                               name: UIApplication.willEnterForegroundNotification,
                                               object: nil)
    }
    
    func setupUI(){
        self.view.addSubview(scheduleRootView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupLayout()
    }
    
    func setupLayout(){
        scheduleRootView.frame = self.view.bounds.inset(by: view.safeAreaInsets)
        scheduleRootView.setupLayout()
    }
    
//    private func returnedForeground(){
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(scheduleRootView.updateLayout),
//                                               name: UIApplication.didEnterBackgroundNotification,
//                                               object: nil)
//    }

}
