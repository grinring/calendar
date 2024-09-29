//
//  OmoideRootView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/27.
//
import UIKit

class OmoideRootView: UIView {
    
    private let contentsAreaMargin: CGFloat = 12
    
    private lazy var controllersView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Col.base
        return view
    }()
    
    //MARK: - content stack view -
    private lazy var contentView: UIView = {
        let view = UIView()
        view.addSubview(toggleContentStackView)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - toggle button -
    private lazy var showAlbumButton:UIButton = {
        let button = UIButton(type: .system)
        var config = UIButton.Configuration.filled()
        let imageSize = CustomFont.title.pointSize
        config.image = IMG.iconAlbum.resizeImage(width: imageSize, height: imageSize)
        config.attributedTitle = AttributedString("アルバムで見る",attributes: AttributeContainer([.font:F.body]))
        config.imagePadding = CustomSize.itemMargin
        config.baseBackgroundColor = Col.accent
        config.baseForegroundColor = Col.defaultCharacter
        config.cornerStyle = .large
        button.configuration = config
        return button
    }()
    
    private lazy var showMapButton:UIButton = {
        let button = UIButton(type: .system)
        var config = UIButton.Configuration.filled()
        let imageSize = CustomFont.title.pointSize
        config.image = IMG.iconMap.resizeImage(width: imageSize, height: imageSize)
        config.attributedTitle = AttributedString("マップで見る",attributes: AttributeContainer([.font:F.body]))
        config.imagePadding = CustomSize.itemMargin
        config.baseBackgroundColor = Col.main
        config.baseForegroundColor = Col.defaultCharacter
        config.cornerStyle = .large
        button.configuration = config
        return button
    }()
    
    private lazy var toggleContentStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [showAlbumButton, showMapButton])
        showAlbumButton.addTarget(self, action: #selector(toggle), for: .touchUpInside)
        showMapButton.addTarget(self, action: #selector(toggle), for: .touchUpInside)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = CustomSize.itemMargin
        showAlbumButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showMapButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        return stackView
    }()
    
    //MARK: - sort button -
    
    //MARK: - init method -
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //iphoneの初期状態のfontsize(body)=19より大きく設定している人はverticalに
        if UIFont.preferredFont(forTextStyle: .body).pointSize >= 19 {
            toggleContentStackView.axis = .vertical
            adjustFontSizeToFit()
            toggleContentStackView.layoutIfNeeded()
        } else {
            toggleContentStackView.axis = .horizontal
            adjustFontSizeToFit()
            toggleContentStackView.layoutIfNeeded()
        }
        toggleContentStackView.layoutIfNeeded()
    }
    
    //MARK: - set up method -
    func setupSubviews() {
        addSubview(controllersView)
        controllersView.addSubview(contentView)
    }
    
    //MARK: - objc func -
    @objc func toggle(){
        print("toggle button taped...")
    }
    

}

//MARK: - extentions -
extension OmoideRootView {

    //Buttonのtitleが一行で収まるようにする。文字数の多いshowAlbumButton.titleLabelをshowMapButtonに適応させる。
    private func adjustFontSizeToFit() {
        guard let albumTitleLabel = showAlbumButton.titleLabel else { return }
        var currentFontSize = albumTitleLabel.font.pointSize
        while albumTitleLabel.numberOfLinesInLabel() > 1 {
            currentFontSize -= 1
            albumTitleLabel.font = albumTitleLabel.font.withSize(currentFontSize)
            //setNeedsLayout()
            layoutIfNeeded()
        }
        showMapButton.titleLabel?.font = albumTitleLabel.font
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            controllersView.topAnchor.constraint(equalTo: self.topAnchor),
            controllersView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            controllersView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            controllersView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            contentView.topAnchor.constraint(
                // インスタンスが UIViewController に追加されると、その UIView は UIViewController の safeAreaLayoutGuide を参照。
                equalTo: self.safeAreaLayoutGuide.topAnchor, constant: CustomSize.viewMargin),
            contentView.trailingAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -CustomSize.viewMargin),
            contentView.bottomAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -CustomSize.viewMargin),
            contentView.leadingAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: CustomSize.viewMargin),
        ])
        
        NSLayoutConstraint.activate([
            toggleContentStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            toggleContentStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            toggleContentStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
    }
}
