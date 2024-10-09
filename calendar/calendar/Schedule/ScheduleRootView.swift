//
//  ScheduleRootView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/04.
//

import UIKit

class ScheduleRootView: UIView {
    
    //MARK: - contents view
    private lazy var baseView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Col.base
        view.addSubview(contentsView)
        return view
    }()
    
    private lazy var contentsView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(selectorSectionStackView)
        return view
    }()
    
    //MARK: - button
    private func createButton(title:String,icon:UIImage?,bgColor:UIColor)->UIButton {
        let button = UIButton(type: .system)
        var config = UIButton.Configuration.filled()
        config.background.backgroundColor = bgColor
        config.attributedTitle = AttributedString(title, attributes: AttributeContainer([
            NSAttributedString.Key.font:F.body,
            NSAttributedString.Key.foregroundColor:Col.defaultCharacter
        ]))
        if let icon = icon {
            let iconConfig = UIImage.SymbolConfiguration(paletteColors: [.systemTeal,Col.defaultCharacter])
            config.image = icon.withConfiguration(iconConfig)
            config.imagePadding = Size.itemMargin
        }
        config.cornerStyle = .large
        button.configuration = config
        return button
    }
    
    private lazy var weekButton:UIButton = {
        let button = createButton(title: "週単位", icon: nil, bgColor: Col.accent)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var monthButton:UIButton = {
        let button = createButton(title: "月単位", icon: nil, bgColor: Col.accent)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var changeTheCalenderLayoutStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [weekButton,monthButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = Size.itemMargin
        return stackView
    }()
    
    private lazy var addScheduleButton:UIButton = {
        let button = createButton(title: "予定を追加", icon: IMG.iconAddSchedule, bgColor: Col.defaultBackground)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var selectorSectionStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [changeTheCalenderLayoutStackView,addScheduleButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = Size.contensMargin
        stackView.alignment = .center
        return stackView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponent()
    }
    
    func setupComponent(){
        addSubview(baseView)
    }
    
    func setupLayout(){
        layoutbaseView()
        layoutContentsView()
        updateLayout()
    }
    
    private func layoutbaseView(){
        baseView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        baseView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        baseView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        baseView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
    
    private func layoutContentsView(){
        contentsView.layer.cornerRadius = 12
        contentsView.topAnchor.constraint(equalTo: baseView.topAnchor, constant: Size.viewMargin).isActive = true
        contentsView.trailingAnchor.constraint(equalTo: baseView.trailingAnchor, constant: -Size.viewMargin).isActive = true
        contentsView.bottomAnchor.constraint(equalTo: baseView.bottomAnchor, constant: -Size.viewMargin).isActive = true
        contentsView.leadingAnchor.constraint(equalTo: baseView.leadingAnchor, constant: Size.viewMargin).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    @objc internal func updateLayout(){
        if UIFont.preferredFont(forTextStyle: .body).pointSize > 19 {
            print("v")
            selectorSectionStackView.axis = .vertical
            selectorSectionStackView.distribution = .fill
            selectorSectionStackView.alignment = .fill
            prepareLayoutType()
        } else {
            print("h")
            selectorSectionStackView.axis = .horizontal
            selectorSectionStackView.distribution = .fill
            selectorSectionStackView.alignment = .center
            prepareLayoutType()
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func prepareLayoutType() {
        
        let defaultConstraints = [
            weekButton.heightAnchor.constraint(equalToConstant: 36),
            monthButton.heightAnchor.constraint(equalToConstant: 36),
            changeTheCalenderLayoutStackView.heightAnchor.constraint(equalToConstant: 54),
            changeTheCalenderLayoutStackView.widthAnchor.constraint(equalTo: contentsView.widthAnchor, multiplier: 0.5),
            changeTheCalenderLayoutStackView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            changeTheCalenderLayoutStackView.topAnchor.constraint(equalTo: contentsView.topAnchor),
            addScheduleButton.heightAnchor.constraint(equalToConstant: 54),
            selectorSectionStackView.topAnchor.constraint(equalTo: contentsView.topAnchor),
            selectorSectionStackView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            selectorSectionStackView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor)
        ]
        
        let largeConstraints = [
            weekButton.heightAnchor.constraint(equalToConstant: 44),
            monthButton.heightAnchor.constraint(equalToConstant: 44),
            changeTheCalenderLayoutStackView.heightAnchor.constraint(equalToConstant: 44),
            changeTheCalenderLayoutStackView.widthAnchor.constraint(equalTo: contentsView.widthAnchor),
            changeTheCalenderLayoutStackView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            changeTheCalenderLayoutStackView.topAnchor.constraint(equalTo: contentsView.topAnchor),
            addScheduleButton.heightAnchor.constraint(equalToConstant: 54),
            selectorSectionStackView.topAnchor.constraint(equalTo: contentsView.topAnchor),
            selectorSectionStackView.leadingAnchor.constraint(equalTo: contentsView.leadingAnchor),
            selectorSectionStackView.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor),
            selectorSectionStackView.bottomAnchor.constraint(equalTo: addScheduleButton.bottomAnchor)
        ]
        
        // 現在のすべての制約を無効にする
        NSLayoutConstraint.deactivate(defaultConstraints)
        NSLayoutConstraint.deactivate(largeConstraints)
        
        if Size.setupSizePattern() == SizePattern.L{
            NSLayoutConstraint.activate(largeConstraints)
        }else{
            NSLayoutConstraint.activate(defaultConstraints)
        }
    }

}
