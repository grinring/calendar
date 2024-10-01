
import UIKit

class OmoideRootView: UIView {
    
    private let contentsAreaMargin: CGFloat = 12
    
    private lazy var superView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var scrollView:UIScrollView = {
        let scrollVeiw = UIScrollView()
        scrollVeiw.translatesAutoresizingMaskIntoConstraints = false
        scrollVeiw.backgroundColor = .gray
        return scrollVeiw
    }()
    
    //MARK: - contentsview -
    private lazy var contentsView: UIView = {
        let view = UIView()
        view.addSubview(toggleContentStackView)
        view.addSubview(sortButton)
        view.addSubview(friendsCollectionView)
        view.addSubview(albumCollectionView)
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
    
    private lazy var sortButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        sortButtonContents.isUserInteractionEnabled = false
        button.addSubview(sortButtonContents)
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(sort), for: .touchUpInside)
        return button
    }()
    
    private lazy var sortButtonContents:UIStackView = {
        let label = UILabel()
        label.text = "デフォルト"
        label.font = CustomFont.subCaption
        let icon = IMG.iconSort.resizeImage(width: 20, height: 20)
        let imageView = UIImageView(image: icon)
        let stackView = UIStackView(arrangedSubviews: [label,imageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        return stackView
    }()
    
    //MARK: - collection view
    lazy var friendsCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = Size.itemMargin
        
        if Size.setupSizePattern() == SizePattern.S {
            layout.itemSize = CGSize(width: 51, height: 49)}
        else if Size.setupSizePattern() == SizePattern.L{
            layout.itemSize = CGSize(width: 66, height: 68)}
        else {
            layout.itemSize = CGSize(width:57, height: 58)}
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.tag = 1
        collectionView.backgroundColor = .clear
        
        if Size.setupSizePattern() == SizePattern.S {
            collectionView.heightAnchor.constraint(equalToConstant: 49).isActive = true}
        else if Size.setupSizePattern() == SizePattern.L{
            collectionView.heightAnchor.constraint(equalToConstant: 68).isActive = true}
        else {
            collectionView.heightAnchor.constraint(equalToConstant: 58).isActive = true}
        
        return collectionView
    }()
    
    lazy var albumCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = Size.itemMargin
        layout.itemSize = CGSize(width: 180, height: 200)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.tag = 2
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    //MARK: - init method -
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(superView)
        superView.addSubview(scrollView)
        scrollView.addSubview(contentsView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //レイアウト変更時の処理
    override func layoutSubviews() {
        super.layoutSubviews()
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
    
    

    
    //MARK: - objc func -
    @objc func toggle(){
        print("toggle button taped...")
    }
    
    @objc func sort(){
        print("sort button tapped...")
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

    func setupLayout() {
        
        NSLayoutConstraint.activate([
            superView.topAnchor.constraint(equalTo: self.topAnchor),
            superView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            superView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            superView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            scrollView.topAnchor.constraint(equalTo: superView.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo:superView.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: superView.leadingAnchor),

            contentsView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: Size.contensMargin),
            contentsView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -Size.viewMargin),
            contentsView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: Size.viewMargin),
            contentsView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -Size.viewMargin * 2),
            contentsView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            //最後にここを完成させる
            contentsView.heightAnchor.constraint(equalTo:scrollView.heightAnchor)
        ])

        NSLayoutConstraint.activate([
            toggleContentStackView.topAnchor.constraint(equalTo: contentsView.topAnchor),
            toggleContentStackView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor),
            toggleContentStackView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),

            sortButton.topAnchor.constraint(equalTo: toggleContentStackView.bottomAnchor, constant: CustomSize.contensMargin),
            sortButton.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor),
            sortButton.widthAnchor.constraint(equalTo: sortButtonContents.widthAnchor, constant: 20),
            sortButton.heightAnchor.constraint(equalToConstant: 36),

            sortButtonContents.centerXAnchor.constraint(equalTo: sortButton.centerXAnchor),
            sortButtonContents.centerYAnchor.constraint(equalTo: sortButton.centerYAnchor),

            friendsCollectionView.topAnchor.constraint(equalTo: sortButton.bottomAnchor, constant: Size.contensMargin),
            //contentsViewから逆にはみ出してスクロール感を出す
            friendsCollectionView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor, constant: Size.viewMargin),
            friendsCollectionView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            
            albumCollectionView.topAnchor.constraint(equalTo: friendsCollectionView.bottomAnchor, constant: Size.contensMargin),
            albumCollectionView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor),
            albumCollectionView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            albumCollectionView.bottomAnchor.constraint(equalTo: contentsView.bottomAnchor)
        ])
    }

}
