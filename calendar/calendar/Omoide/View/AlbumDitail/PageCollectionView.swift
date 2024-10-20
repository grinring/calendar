//
//  PageCollectionView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/19.
//

import UIKit

class PageCollectionView: UIView {
    
    //MARK: - propaties
    var postData:[PageModel] = []
    //このalbumDataを使ってPostを引き出す
    var albumData:AlbumModel
    
    //MARK: - components
    private lazy var collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical // レイアウトの方向を設定（縦スクロール）
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    //MARK: - setup
    private func setupComponents(){
        addSubview(collectionView)
    }
    
    private func setupLayout(){
        collectionView.backgroundColor = .clear
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    //MARK: - init
    init(frame: CGRect,albumData:AlbumModel) {
        self.albumData = albumData
        for post in albumData.posts{
            postData.append(post)
        }
        super.init(frame: frame)
        setupComponents()
        setupLayout()
        collectionView.register(PageCollectionViewCell.self, forCellWithReuseIdentifier: PageCollectionViewCell.cellIdentifier)

        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension PageCollectionView:UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellHeight = collectionView.frame.height / 8
        let cellWidth = collectionView.frame.width
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
}

extension PageCollectionView:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(postData)
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PageCollectionViewCell.cellIdentifier, for: indexPath) as? PageCollectionViewCell{
            cell.configure(pageData: postData[indexPath.row])
            return cell
        }else{
            return UICollectionViewCell()
        }
        
    }
    
}


