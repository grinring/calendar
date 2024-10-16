//
//  albumCollectionViewCell.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    
    
    //MARK: - components
    private lazy var albumImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var albumTitle:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.lineBreakMode = .byTruncatingTail
        label.font = F.body
        return label
    }()
    
//    private lazy var albumDescription:UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 2
//        label.lineBreakMode = .byTruncatingTail
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = F.subBody
//        return label
//    }()
    
    private lazy var location:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = F.subCaption
        return label
    }()
    
    private lazy var userIcon:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var albumCaptions:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [location,userIcon])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [albumImageView,albumTitle,albumCaptions])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = Size.itemMargin
        stackView.alignment = .fill
        return stackView
    }()
    
    //MARK: - layout
    func setupComponent(){
        self.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
    }
    
    func setupLayout(){
        NSLayoutConstraint.activate([
            albumImageView.heightAnchor.constraint(equalTo:self.heightAnchor, multiplier: 0.5),
            albumImageView.widthAnchor.constraint(equalTo:albumImageView.heightAnchor, multiplier: 1.618),
            userIcon.heightAnchor.constraint(equalToConstant: 24),
            userIcon.widthAnchor.constraint(equalTo:userIcon.heightAnchor),
            albumCaptions.heightAnchor.constraint(equalTo: userIcon.heightAnchor),
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
    }
    
    
    func configure(image:UIImage,title:String,location:String,userIcon:UIImage){
        albumImageView.image = image
        albumTitle.text = title
        self.location.text = location
        self.userIcon.image = userIcon
    }
    
    //MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponent()
        setupLayout()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        albumImageView.image = nil
        albumTitle.text = nil
        location.text = nil
        userIcon.image = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
