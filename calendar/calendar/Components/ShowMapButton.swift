//
//  showMapButton.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/15.
//

import UIKit

class ShowMapButton: UIView {
    
    private lazy var iconView:UIView = {
        let image = UIImage(systemName: "map")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var label:UILabel = {
        let label = UILabel()
        label.text = "おもいでマップ"
        label.adjustsFontSizeToFitWidth = true
        label.font = F.caption
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private(set) lazy var stackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [iconView,label])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        return stackView
    }()
    
    private lazy var contentsView:UIView = {
        let view = UIView()
        view.backgroundColor = Col.main
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private func setupComponents(){
        addSubview(contentsView)
        contentsView.addSubview(stackView)
    }
    
    private func setupLayout(){
        NSLayoutConstraint.activate([
            contentsView.topAnchor.constraint(equalTo: self.topAnchor),
            contentsView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentsView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            contentsView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.widthAnchor.constraint(equalTo: contentsView.widthAnchor,multiplier: 0.8),
            stackView.heightAnchor.constraint(equalTo: contentsView.heightAnchor,multiplier: 0.8),
            stackView.centerXAnchor.constraint(equalTo:contentsView.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: contentsView.centerYAnchor),
            iconView.heightAnchor.constraint(equalTo: iconView.widthAnchor,multiplier: 0.75)
        ])
    }
    
    private func setupLayoutRequireCalculations(){
        layoutIfNeeded()
        contentsView.layer.cornerRadius = contentsView.bounds.height * 0.1
        //動的なサイズ調整や再計算が必要なレイアウトを処理/
    }
    
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        self.addGestureRecognizer(tapGesture)
        // ユーザーインタラクションを有効
        self.isUserInteractionEnabled = true
        }

    @objc private func handleTap() {
        print("View tapped!")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupComponents()
        setupLayout()
        setupGesture()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayoutRequireCalculations()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
