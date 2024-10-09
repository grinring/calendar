import UIKit

class ChangeDisplayFormatButtonsView: UIView {
    
    //MARK: - components
    lazy var albumButton:UIButton = {
        let button = CustomComponents.createButton(title: "アルバムで見る", icon: IMG.iconAlbum, bgColor: Col.accent)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var mapButton:UIButton = {
        let button = CustomComponents.createButton(title: "マップで見る", icon: IMG.iconMap, bgColor: Col.main)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var changeDisplayFormatButtonStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [albumButton,mapButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = Size.itemMargin
        stackView.alignment = .fill
        return stackView
    }()
    
    //MARK: - setup
    func setupComponents(){
        self.translatesAutoresizingMaskIntoConstraints = false
        addSubview(changeDisplayFormatButtonStackView)
    }
    
    func setupLayout(){
        NSLayoutConstraint.activate([
            changeDisplayFormatButtonStackView.topAnchor.constraint(equalTo: self.topAnchor),
            changeDisplayFormatButtonStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            changeDisplayFormatButtonStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            changeDisplayFormatButtonStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
    }
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponents()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


