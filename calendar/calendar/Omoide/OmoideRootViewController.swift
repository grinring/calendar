
import UIKit
import FirebaseAuth

class OmoideRootViewController: UIViewController,AlbumCollectionViewDelegate{
    
    let friendsData = DataStore.shared.getAllFriends()
    
    private(set) lazy var omoideRootView = OmoideRootView(frame: .zero, friendCollectionViewData: friendsData)
    let navigationButton1 = UIBarButtonItem(image: IMG.iconAddFriend, style: .plain, target: OmoideRootViewController.self, action: #selector(addFriendButtonPressed))
    let navigationButton2 = UIBarButtonItem(image: IMG.iconAddAlbum, style: .plain, target: OmoideRootViewController.self, action: #selector(addAlbumButtonPressed))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "おもいで"
        self.view.addSubview(omoideRootView)
        navigationItem.rightBarButtonItems = [navigationButton1,navigationButton2]
        omoideRootView.albumCollectionView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        omoideRootView.frame = view.bounds.inset(by: view.safeAreaInsets)
    }
    
    //albumセルタップで画面遷移
    func didSelectedCell(albumData:AlbumModel) {
        print("taped")
        let albumDetailVC = AlbumDitailViewController()
        albumDetailVC.albumData = albumData
        navigationController?.pushViewController(albumDetailVC, animated: true)
    }
    
    @objc func addFriendButtonPressed(){
        
    }
    
    @objc func addAlbumButtonPressed(){
        
    }
}
