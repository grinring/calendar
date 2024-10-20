//
//  albumCollectionView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import UIKit

protocol AlbumCollectionViewDelegate:AnyObject{
    func didSelectedCell(albumData:AlbumModel)
}

class AlbumCollectionView: UIView,FriendsCollectionViewDelegate {
    
    var showAlbumsArray:[AlbumModel] = []
    var friendsData:[UserModel] = DataStore.shared.getAllFriends()
    weak var delegate:AlbumCollectionViewDelegate?

    //MARK: - components
    private lazy var albumCollectionView:UICollectionView = {
        let config = UICollectionViewFlowLayout()
        config.scrollDirection = .vertical
        config.minimumLineSpacing = 10
        config.minimumInteritemSpacing = 10
        // initではframeサイズを使えないのでスクリーンサイズを使用する。
        let width = UIScreen.main.bounds.width * 0.4
        let height = width * 1.1
        config.itemSize = CGSize(width: width, height: height)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: config)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    //MARK: - setup
    func setupComponents(){
        addSubview(albumCollectionView)
    }
    
    func setupData()->[AlbumModel]{
        var datas:[AlbumModel] = []
        let friends = DataStore.shared.getAllFriends()
        for friend in friends{
            for album in friend.albums{
                datas.append(album)
            }
        }
        return datas
    }
    
    func setupLayout(){
        NSLayoutConstraint.activate([
            albumCollectionView.topAnchor.constraint(equalTo: self.topAnchor),
            albumCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            albumCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            albumCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
    }
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        showAlbumsArray = setupData()
        albumCollectionView.dataSource = self
        albumCollectionView.delegate = self
        albumCollectionView.register(AlbumCollectionViewCell.self, forCellWithReuseIdentifier: "AlbumCell")
        setupComponents()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func showAllAlbums() {
        self.showAlbumsArray = []
        let friendsData = DataStore.shared.getAllFriends()
        for friend in friendsData{
            let albums = friend.albums
            for album in albums{
                showAlbumsArray.append(album)
            }
        }
        albumCollectionView.reloadData()
    }
    
    //cellがタップされたら、friendCellのindexPathを取得し、それを使用してUserIDを抽出している。
    //IDをもとに、表示するalbumを抽出し
    func didSelectedCell(userID: UUID) {
        showAlbumsArray = []
        do{
            let friendData = try DataStore.shared.getFriend(userID: userID)
            for album in friendData.albums{
                showAlbumsArray.append(album)
            }
            albumCollectionView.reloadData()
            print("done...")
        } catch {
            print("album collectionの編集時にユーザー情報の取得に失敗しました")
        }
    }
    
}

extension AlbumCollectionView:UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showAlbumsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as? AlbumCollectionViewCell {
            //albumModelを一つずつ出して初期化
            let albumData = showAlbumsArray[indexPath.row]
            let postUserID = albumData.userID
            var userIcon = UIImage()
            for friend in friendsData{
                if friend.id == postUserID{
                    userIcon = friend.userIcon
                }
            }
            print(albumData)
            cell.configure(image: albumData.thumbnailImage, title: albumData.title, location: albumData.location, userIcon:userIcon)
            return cell
        } else {
            //エラーハンドリングする?
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let albumData = showAlbumsArray[indexPath.row]
        //画面遷移するコードを実装
        if let delegate = delegate {
            delegate.didSelectedCell(albumData: albumData)
        } else {
            print("err")
        }
    }
    
}
