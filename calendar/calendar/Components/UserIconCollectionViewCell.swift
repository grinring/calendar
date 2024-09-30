//
//  UserIconCollectionViewCell.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/30.
//

import UIKit

class UserIconCollectionViewCell: UICollectionViewCell {
    
    var userFirstName: String = ""
    var userLastName: String = ""
    var userImage: UIImage?
    
    private lazy var userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = setupUserFullName()
        label.font = UIFont.systemFont(ofSize: 8)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    func setupCell(userFirstName: String, userLastName: String, userImage: UIImage?) {
        self.userFirstName = userFirstName
        self.userLastName = userLastName
        self.userImage = userImage
        setupViews()
        setupConstraints()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.userImageView.image = nil
        self.nameLabel.text = ""
    }
    
    // フルネームを生成する関数
    func setupUserFullName() -> String {
        return "\(userFirstName) \(userLastName)"
    }
    
    // UI要素をビューに追加する関数
    private func setupViews() {
        nameLabel.text = setupUserFullName()
        // 画像が設定されている場合
        if let userImage = userImage {
            let img = userImage.cutOutCircle()
            userImageView.image = img
            addSubview(userImageView)
            addSubview(nameLabel)
        } else {
            // 画像がない場合のプレースホルダー処理
            userImageView.backgroundColor = .lightGray
            addSubview(userImageView)
            addSubview(nameLabel)
        }
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            userImageView.topAnchor.constraint(equalTo: self.topAnchor),
            userImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: Size.itemMargin),
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
        
        let sizePattern = Size.setupSizePattern()
        
        if sizePattern == SizePattern.S{
            NSLayoutConstraint.activate([
                userImageView.widthAnchor.constraint(equalToConstant: 30),
                userImageView.heightAnchor.constraint(equalToConstant: 30)
            ])
        }
        else if sizePattern == SizePattern.L{
            NSLayoutConstraint.activate([
                userImageView.widthAnchor.constraint(equalToConstant: 42),
                userImageView.heightAnchor.constraint(equalToConstant: 42)
            ])
        }
        
        else {
            NSLayoutConstraint.activate([
                userImageView.widthAnchor.constraint(equalToConstant: 36),
                userImageView.heightAnchor.constraint(equalToConstant: 36)
            ])
        }
    }
    
}
