//
//  AlbumDitailView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/15.
//



import UIKit

class AlbumDitailView: UIView {
    
    //MARK: - properties
    var albumData:AlbumModel
    private(set) lazy var showAlbumButton = ShowMapButton()
    private(set) lazy var pageCollectionView = PageCollectionView(frame: .zero, albumData: albumData)
    
    //MARK: - componentes
    private lazy var contentsView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var albumTitleLabel:UILabel = {
        let label = UILabel()
        label.font = F.title
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var albumDateLabel:UILabel = {
        let label = UILabel()
        label.font = F.subCaption
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var labelStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [albumTitleLabel,albumDateLabel])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.alignment = .fill
        return stackView
    }()
    
    //MARK: - function
    
    //MARK: - objc func
    
    //MARK: - setup
    private func setupComponent(){
        addSubview(contentsView)
        contentsView.addSubview(labelStackView)
        contentsView.addSubview(showAlbumButton)
        contentsView.addSubview(pageCollectionView)
        pageCollectionView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupLayout(){
        NSLayoutConstraint.activate([
            contentsView.topAnchor.constraint(equalTo: self.topAnchor, constant: Size.viewMargin),
            contentsView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Size.viewMargin),
            contentsView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            contentsView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Size.viewMargin),
            showAlbumButton.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor),
            showAlbumButton.topAnchor.constraint(equalTo: contentsView.topAnchor),
            showAlbumButton.heightAnchor.constraint(equalToConstant: 76),
            showAlbumButton.widthAnchor.constraint(equalTo:showAlbumButton.heightAnchor),
            labelStackView.topAnchor.constraint(equalTo: showAlbumButton.stackView.topAnchor),
            labelStackView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            labelStackView.trailingAnchor.constraint(equalTo: showAlbumButton.leadingAnchor),
            labelStackView.heightAnchor.constraint(equalTo:showAlbumButton.stackView.heightAnchor),
            albumTitleLabel.heightAnchor.constraint(equalTo: showAlbumButton.stackView.heightAnchor, multiplier: 0.6),
            albumDateLabel.heightAnchor.constraint(equalTo: showAlbumButton.stackView.heightAnchor, multiplier: 0.4),
            pageCollectionView.topAnchor.constraint(equalTo: showAlbumButton.bottomAnchor,constant: Size.contensMargin),
            pageCollectionView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            pageCollectionView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor),
            pageCollectionView.bottomAnchor.constraint(equalTo: contentsView.bottomAnchor)
        ])
    }
    
    private func configure(title: String, albumData: AlbumModel) {
        albumTitleLabel.text = title
        
        let dates = albumData.posts.map { $0.date }.sorted()
        let stringDatas = dates.map { 
            formatDate($0, isFirst: $0 == dates.first)
        }
        let date = stringDatas.joined(separator: ",")
        albumDateLabel.text = date
    }

    private func formatDate(_ date: Date, isFirst: Bool) -> String {
        let dateFormatter = DateFormatter()
        
        if isFirst {
            dateFormatter.dateFormat = "yyyy-MM-dd"
        } else {
            dateFormatter.dateFormat = "dd"
            let dayString = dateFormatter.string(from: date)
            
            if dayString == "1" {
                dateFormatter.dateFormat = "MM-dd"
            } else {
                return dayString
            }
        }
        return dateFormatter.string(from: date)
    }

    private func setupLayoutRequireCalculations(){
        layoutIfNeeded()
        //動的なサイズ調整や再計算が必要なレイアウトを処理/
    }
    
    
    
    //MARK: - init method
    init(frame: CGRect,albumData:AlbumModel) {
        self.albumData = albumData
        super.init(frame: frame)
        setupComponent()
        setupLayout()
        configure(title: albumData.title,albumData: albumData)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayoutRequireCalculations()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
