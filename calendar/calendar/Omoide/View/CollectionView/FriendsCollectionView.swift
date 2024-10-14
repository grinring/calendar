//
//  FriendCollectionView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import UIKit

protocol FriendsCollectionViewDelegate:AnyObject{
    func didSelectedCell(userID:UUID)
    func showAllAlbums()
}

class FriendsCollectionView: UIView {
    
    weak var delegate:FriendsCollectionViewDelegate?
    var collectionViewShowCount:Int = DataStore.shared.getAllFriends().count + 2
    
    //MARK: - components
    private lazy var collectionView:UICollectionView = {
        let config = UICollectionViewFlowLayout()
        config.minimumInteritemSpacing = 3
        config.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: config)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    //MARK: - setup
    func setupComponents(){
        addSubview(collectionView)
    }
    
    func setupLayout(){
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
    }
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(FriendCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.dataSource = self
        collectionView.delegate = self
        
        setupComponents()
        let initialIndexPath = IndexPath(row: 0, section: 0)
        collectionView.selectItem(at: initialIndexPath, animated: false, scrollPosition: .top)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
    }
}

//MARK: - collection view data source
extension FriendsCollectionView:UICollectionViewDelegate,UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionViewShowCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? FriendCollectionViewCell{
            //一つめのcellは全員表示のcellにする
            if indexPath.row == 0 {
                cell.configure(data: FriendCollectionViewDefaultModel(text: "全員", image: IMG.allFriends))
                cell.isSelected = true
            } 
            //二つ目のcellは友達追加のcellにする
            else if indexPath.row == 1{
                cell.configure(data: FriendCollectionViewDefaultModel(text: "知り合い追加", image: IMG.addFriend))
            } 
            //三つ目以降はfriendのiconを出す
            else {
                let userList = DataStore.shared.getAllFriends()
                let userData = userList[indexPath.row - 2]
                cell.configure(data: FriendsCollectionViewModel(firstName: userData.firstName,
                                                                lastName: userData.lastName,
                                                                firendImage: userData.userIcon))
            }
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? FriendCollectionViewCell {
            cell.isSelected = true
            print("Selected: \(indexPath)")
            
            //cellをタップしたらアルバム表示のロジックを走らせる
            //１つ目のcellタップですべてのアルバムを表示する
            if indexPath.row == 0{
                print("tap0")
                delegate?.showAllAlbums()
            } 
            else if indexPath.row == 1{
                //友達追加の画面遷移処理
            } 
            //3つ目以降は当該friendが投稿したalbumを表示する
            else {
                let friendsList = DataStore.shared.getAllFriends()
                //タップされたindexPathを出す
                let selectedFriendData = friendsList[indexPath.row - 2]
                let selectedFriendID = selectedFriendData.id
                delegate?.didSelectedCell(userID: selectedFriendID)
            }
        }
    }

    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? FriendCollectionViewCell {
            cell.isSelected = false
            print("Deselected: \(indexPath)")
        }
    }

    
    
}
