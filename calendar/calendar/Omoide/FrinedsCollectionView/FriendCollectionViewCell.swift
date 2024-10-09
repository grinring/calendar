//
//  FriendCollectionViewCell.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/06.
//

import UIKit

class FriendCollectionViewCell: UICollectionViewCell {
    
    let unselectedBGColor = UIColor.clear
    let selectedBGColor = Col.accent
    
    override var isSelected: Bool {
        didSet {
            self.backgroundColor = isSelected ? selectedBGColor : unselectedBGColor
        }
        
    }
    
    //MARK: - components
    
    private lazy var userImageArea:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userImageView)
        return view
    }()
    
    private lazy var userImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var userNameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 8)
        label.textAlignment = .center
        label.numberOfLines = 1
        label.lineBreakMode = .byTruncatingTail
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var stackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [userImageArea,userNameLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        return stackView
    }()
    
    //MARK: - setup
    
    func setupComponents(){
        addSubview(stackView)
    }
    
    private func setupLayout(){
        self.backgroundColor = .clear
        self.layer.cornerRadius = 5
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            userImageArea.heightAnchor.constraint(equalTo:self.heightAnchor,multiplier: 0.75),
            userImageView.centerXAnchor.constraint(equalTo: userImageArea.centerXAnchor),
            userImageView.centerYAnchor.constraint(equalTo: userImageArea.centerYAnchor),
            userImageView.heightAnchor.constraint(equalTo: userImageArea.heightAnchor,multiplier: 0.9),
            userImageView.widthAnchor.constraint(equalTo: userImageView.heightAnchor, multiplier: 1.0),
        ])
    }
    
    //controllerで呼びだす
    func configure<dataModel:FriendsCollectionViewProtocol>(data:dataModel){
        userImageView.image = data.cellImage
        userNameLabel.text = data.cellText
    }
    
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponents()
        setupLayout()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        userImageView.layer.cornerRadius = userImageView.bounds.height/2
        userImageView.layer.masksToBounds = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        userImageView.image = nil
        userNameLabel.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
