
import UIKit

class OmoideRootViewController: UIViewController {
    
    private var userData:[UserModel] = []
    private var albumData:[AlbumModel] = []
    
    var omoideRootModel:OmoideRootModel? {
        didSet{
            print("set")
        }
    }
    
    private(set) lazy var omoideRootView = OmoideRootView()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        showLoadingIndicator()
        
        self.view.addSubview(omoideRootView)
        
        omoideRootView.friendsCollectionView.dataSource = self
        omoideRootView.friendsCollectionView.delegate = self
        omoideRootView.friendsCollectionView.register(UserIconCollectionViewCell.self, forCellWithReuseIdentifier: "userCell")
        
        omoideRootView.albumCollectionView.dataSource = self
        omoideRootView.albumCollectionView.delegate = self
        omoideRootView.albumCollectionView.register(AlbumCollectionViewCell.self, forCellWithReuseIdentifier: "albumCell")
        
        userData = createTestUsersData()
        albumData = createTestAlbumData()
        
        configureNavigationBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        omoideRootView.frame = view.bounds.inset(by: view.safeAreaInsets)
        omoideRootView.setupLayout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        stopLoadingIndicator()
    }
    
    
    func configureNavigationBar(){
        self.title = "おもいでアルバム"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = Col.defaultBackground ?? .systemBackground
        appearance.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: Col.defaultCharacter ?? .tintColor]
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
    }

}

extension OmoideRootViewController{
    
    private func createTestUsersData() -> [UserModel]{
        var users:[UserModel] = []
        for i in 1...20{
            let user = UserModel(firstName: "日本国", lastName: "\(i)太郎", image: IMG.defaultUserIcon)
            users.append(user)
        }
        return users
    }
    
    private func createTestAlbumData() -> [AlbumModel]{
        var albums:[AlbumModel] = []
        for _ in 1...12{
            let album = AlbumModel(image: IMG.defaultAlbumImage,
                                   title: "最新の思い出", subTitle: "text text text text text text text",
                                   location: "奈良県奈良市", userIcon: IMG.defaultUserIcon)
            albums.append(album)
        }
        return albums
    }
}

extension OmoideRootViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 1 {
            return userData.count
        } else {
            return albumData.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 1 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "userCell", for: indexPath) as? UserIconCollectionViewCell {
                let user  = userData[indexPath.item]
                cell.setupUserCell(userFirstName: user.firstName, userLastName: user.lastName, userImage: user.image)
                return cell
            } else {
                //あとでエラー処理追加する
                return UICollectionViewCell()
            }
        } else {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "albumCell", for: indexPath) as? AlbumCollectionViewCell {
                let album = albumData[indexPath.item]
                guard let subTitle = cell.subTitle else {
                    cell.setupAlbumCell(image: album.image ?? IMG.defaultAlbumImage, Titile: album.title, description: nil,
                                        location: album.location, userIcon: album.userIcon)
                    return cell
                }
                cell.setupAlbumCell(image: album.image ?? IMG.defaultAlbumImage, Titile: album.title, description: subTitle,
                                    location: album.location, userIcon: album.userIcon)
                return cell
            } else {
                //あとでエラー処理追加する
                return UICollectionViewCell()
            }
        }
    }
}

