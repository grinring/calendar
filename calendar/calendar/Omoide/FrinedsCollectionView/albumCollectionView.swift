//
//  albumCollectionView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import UIKit

class albumCollectionView: UIView {

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
        albumCollectionView.dataSource = self
        albumCollectionView.delegate = self
        albumCollectionView.register(albumCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        setupComponents()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension albumCollectionView:UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        for friendData in DataStore.shared.friendsData{
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
