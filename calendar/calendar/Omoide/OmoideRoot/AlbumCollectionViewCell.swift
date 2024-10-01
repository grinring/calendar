//
//  AlbumCollectionViewCell.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/01.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    
    var image:UIImage?
    var title:String = ""
    var subTitle:String?
    var location:String = ""
    var userIcon:UIImage = IMG.defaultAlbumImage
    
    private lazy var albumTitleLable:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = title
        label.font = F.subBody
        return label
    }()
    
    private lazy var albumDescriptionLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = description
        label.font = F.caption
        return label
    }()
    
    private lazy var locationLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = location
        label.font = F.caption
        return label
    }()
    
    private lazy var icon:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var albumImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var albumContentsOfTextStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [albumTitleLable,albumDescriptionLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = Size.itemMargin
        stackView.alignment = .fill
        return stackView
    }()
    
    private lazy var albumContentsOfInfoStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [locationLabel,icon])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = Size.itemMargin
        stackView.alignment = .center
        return stackView
    }()
    
    func setupAlbumCell(image:UIImage?,Titile:String,description:String?,location:String,userIcon:UIImage){
        self.image = image ?? IMG.defaultAlbumImage
        self.title = Titile
        self.subTitle = description
        self.location = location
        self.userIcon = userIcon
        setupViews()
        setupConstraints()
    }
    
    private func setupComponent(){
        
        [albumImageView,albumContentsOfTextStackView,albumContentsOfInfoStackView].forEach {
            contentView.addSubview($0)
        }
    }
    
    private func setupViews(){
        setupComponent()
    }
    
    func setupConstraints(){
        contentView.frame = CGRect(origin: .zero, size: CGSize(width: 180, height: 200))
        NSLayoutConstraint.activate([
            albumImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            albumImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.57),
            albumImageView.widthAnchor.constraint(equalTo: albumImageView.heightAnchor, multiplier: 1.618),
            albumImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            albumContentsOfTextStackView.topAnchor.constraint(equalTo: albumImageView.bottomAnchor,constant: Size.itemMargin),
            albumContentsOfTextStackView.widthAnchor.constraint(equalTo: albumImageView.widthAnchor),
            albumContentsOfTextStackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            albumContentsOfInfoStackView.topAnchor.constraint(equalTo: albumContentsOfTextStackView.bottomAnchor, constant: Size.itemMargin),
            albumContentsOfInfoStackView.widthAnchor.constraint(equalTo: albumImageView.widthAnchor),
            albumContentsOfInfoStackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            icon.heightAnchor.constraint(equalToConstant: F.caption.pointSize),
            icon.widthAnchor.constraint(equalTo: icon.heightAnchor, multiplier: 1.0)
            ])
        
    }
    
    
}
