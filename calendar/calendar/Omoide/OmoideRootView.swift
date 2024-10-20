
import UIKit

class OmoideRootView: UIView {
    
    var friendDatas:[UserModel]
    private lazy var changeDisplayFormatButtonsView = ChangeDisplayFormatButtonsView()
    private lazy var friendsCollectionView = FriendsCollectionView(frame: .zero,
                                                                        dataSource: friendDatas,
                                                                        cellPattern: .Root)
    private(set) lazy var albumCollectionView = AlbumCollectionView()
    
    //MARK: - components
    lazy var scrollView:UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = Col.base
        return scrollView
    }()
    
    lazy var contentsView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    //MARK: - setup
    private func setupComponents(){
        addSubview(scrollView)
        scrollView.addSubview(contentsView)
        contentsView.addSubview(changeDisplayFormatButtonsView)
        contentsView.addSubview(friendsCollectionView)
        contentsView.addSubview(albumCollectionView)
        friendsCollectionView.delegate = albumCollectionView
    }
    
    func setupLayout(){
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
        NSLayoutConstraint.activate([
            contentsView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: Size.viewMargin),
            contentsView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -Size.viewMargin),
            contentsView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentsView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: Size.viewMargin),
            contentsView.heightAnchor.constraint(equalTo:scrollView.heightAnchor, constant: -Size.viewMargin),
            contentsView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -Size.viewMargin*2)
        ])
        NSLayoutConstraint.activate([
            changeDisplayFormatButtonsView.topAnchor.constraint(equalTo: contentsView.topAnchor),
            changeDisplayFormatButtonsView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            changeDisplayFormatButtonsView.widthAnchor.constraint(equalTo:contentsView.widthAnchor),
            changeDisplayFormatButtonsView.heightAnchor.constraint(equalToConstant: 44),
            friendsCollectionView.topAnchor.constraint(equalTo: changeDisplayFormatButtonsView.bottomAnchor,constant: Size.contensMargin),
            friendsCollectionView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            friendsCollectionView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor, constant: Size.viewMargin),
            friendsCollectionView.heightAnchor.constraint(equalTo:contentsView.heightAnchor, multiplier: 0.1),
            albumCollectionView.topAnchor.constraint(equalTo: friendsCollectionView.bottomAnchor, constant: Size.contensMargin),
            albumCollectionView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            albumCollectionView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor),
            albumCollectionView.bottomAnchor.constraint(equalTo: contentsView.bottomAnchor)
        ])
        
    }
    

    


    //MARK: - init
    
    init(frame: CGRect,friendCollectionViewData:[UserModel]) {
        friendDatas = friendCollectionViewData
        super.init(frame: frame)
        setupComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
    }
    

}
