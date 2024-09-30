//
//  OmoideViewController.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/27.
//

import UIKit

class OmoideRootViewController: UIViewController {
    
    private var userData:[UserModel] = []
    
    var omoideRootModel:OmoideRootModel? {
        didSet{
            print("set")
        }
    }
    
    private(set) lazy var omoideRootView = OmoideRootView()
    
    override func loadView(){
        self.view = omoideRootView
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        omoideRootView.collectionView.dataSource = self
        omoideRootView.collectionView.delegate = self
        omoideRootView.collectionView.register(UserIconCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        configureNavigationBar()
        
        userData = createTestData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
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

extension OmoideRootViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return userData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? UserIconCollectionViewCell {
            let user  = userData[indexPath.item]
            cell.setupCell(userFirstName: user.firstName, userLastName: user.lastName, userImage: user.image)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    private func createTestData() -> [UserModel]{
        var users = [UserModel]()
        for i in 1...20{
            let user = UserModel(firstName: "藤井寺", lastName: "\(i)太郎", image: IMG.userIcon)
            users.append(user)
        }
        return users
    }
    
}
