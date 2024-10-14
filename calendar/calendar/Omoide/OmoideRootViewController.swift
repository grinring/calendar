
import UIKit
import FirebaseAuth

class OmoideRootViewController: UIViewController {
    
    var listerHandler:AuthStateDidChangeListenerHandle?
    private(set) lazy var searchRootView = OmoideRootView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "おもいで"
        self.view.addSubview(searchRootView)
        
        
        
        listerHandler = Auth.auth().addStateDidChangeListener({ auth, user in
            if let user = user {
                //login ok
            } else {
                if let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController"){
                    self.navigationController?.pushViewController(nextVC, animated: true)
                }
            }
        })
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        searchRootView.frame = view.bounds.inset(by: view.safeAreaInsets)
    }
}
