//
//  PageCollectionViewCell.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/19.
//

import UIKit

class PageCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "pageCollectionCell"
    var pageData: PageModel? 
    var locationTitle: String = ""
    
    private lazy var pageThumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var publicationImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = Col.main
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .center
        if let symbol = UIImage(systemName: "lock.circle"){
            let resizeImage = symbol.withConfiguration(UIImage.SymbolConfiguration(pointSize: 20))
            imageView.image = resizeImage
        }
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.font = F.title
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.font = F.subCaption
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var locationLabel: UILabel = {
        let label = UILabel()
        label.font = F.subCaption
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var titleStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [publicationImage,titleLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = Size.itemMargin
        stackView.alignment = .center
        return stackView
    }()
    
    
    private lazy var descriptionStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [dateLabel,locationLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = Size.itemMargin
        stackView.alignment = .fill
        return stackView
    }()
    
    private lazy var stackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleStackView,descriptionStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .leading
        return stackView
    }()
    
    func configure(pageData: PageModel) {
        self.pageData = pageData
        locationTitle = pageData.location
        
        // サムネイルimage
        self.pageThumbnailImageView.image = pageData.images.first
        
        // titleLabel
        self.titleLabel.text = pageData.title
        
        // dateLabel
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let formattedDate = dateFormatter.string(from: pageData.date)
        self.dateLabel.text = formattedDate
        
        // publicationImage
        if pageData.publication == publicationPost.publicPost {
            if let symbol = UIImage(systemName: "global"){
                let resizeImage = symbol.withConfiguration(UIImage.SymbolConfiguration(pointSize: 20))
                publicationImage.image = resizeImage
            }
        } else {
            if let symbol = UIImage(systemName: "lock.circle"){
                let resizeImage = symbol.withConfiguration(UIImage.SymbolConfiguration(pointSize: 20))
                publicationImage.image = resizeImage
            }
        }
        
        // locationLabel
        let symbolImage = UIImage(systemName: "mappin.circle")
        let attachment = NSTextAttachment()
        attachment.image = symbolImage
        let attachmentString = NSAttributedString(attachment: attachment)
        let text = NSMutableAttributedString(string: " " + locationTitle)
        text.insert(attachmentString, at: 0)
        locationLabel.attributedText = text
    }
    
    private func setupComponents() {
        addSubview(pageThumbnailImageView)
        addSubview(stackView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            pageThumbnailImageView.heightAnchor.constraint(equalTo: self.heightAnchor),
            pageThumbnailImageView.widthAnchor.constraint(equalTo: pageThumbnailImageView.heightAnchor, multiplier: 1.618),
            pageThumbnailImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            pageThumbnailImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            publicationImage.heightAnchor.constraint(equalToConstant: 24),
            publicationImage.widthAnchor.constraint(equalTo: publicationImage.heightAnchor),
            titleLabel.heightAnchor.constraint(equalTo: titleStackView.heightAnchor,multiplier: 0.7),
            titleStackView.heightAnchor.constraint(equalTo: self.heightAnchor,multiplier: 0.6),
            descriptionStackView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.4),
            
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: pageThumbnailImageView.trailingAnchor,constant: Size.contensMargin),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
    
    private func setupLayoutRequireCalculations(){
        layoutIfNeeded()
        
        pageThumbnailImageView.layer.cornerRadius = pageThumbnailImageView.bounds.height * 0.1
        publicationImage.layer.cornerRadius = publicationImage.bounds.height * 0.5
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponents()
        setupLayout()
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayoutRequireCalculations()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupComponents()
        setupLayout()
    }
}

