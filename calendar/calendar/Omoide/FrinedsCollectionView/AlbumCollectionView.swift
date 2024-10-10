//
//  albumCollectionView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import UIKit

class AlbumCollectionView: UIView,FriendsCollectionViewDelegate {
    
    var showAlbumsArray:[AlbumModel] = []
    var friendsData:[UserModel] = DataStore.shared.getAllFriends()

    //MARK: - components
    private lazy var albumCollectionView:UICollectionView = {
        let config = UICollectionViewFlowLayout()
        config.scrollDirection = .vertical
        config.minimumInteritemSpacing = Size.itemMargin
        config.minimumLineSpacing = Size.itemMargin
        config.estimatedItemSize = CGSize(width: 180, height: 200)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: config)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    //MARK: - setup
    func setupComponents(){
        addSubview(albumCollectionView)
    }
    
    func setupData()->[AlbumModel]{
        print("start")
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
    
    func didSelectedCell(userID: UUID) {
        do{
            self.showAlbumsArray = []
            let friendData = try DataStore.shared.getFriend(id: userID)
            let albumsData = friendData.albums
            self.showAlbumsArray = albumsData
            albumCollectionView.reloadData()
        }catch{
            print("selected album error")
        }
    }
    
}

extension AlbumCollectionView:UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showAlbumsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as? AlbumCollectionViewCell{
            print("array\(showAlbumsArray)")
            let album = showAlbumsArray[indexPath.row]
            let albumImage = album.photos.first
            var albumIcon:UIImage {
                for friend in friendsData{
                    if album.id == friend.id{
                        //
                        print(friend.userIcon)
                        //
                        return friend.userIcon
                        
                        //return 指定いいのか　このコード群の意味
                    }
                }
                return IMG.aFriend
            }
            cell.configure(image: albumImage!,
                           title: album.title, description: album.description, location: album.location, userIcon:albumIcon)
            print("done")
            return cell
        } else {
            //エラーハンドリングする
            print("error")
            return UICollectionViewCell()
        }
    }
}
