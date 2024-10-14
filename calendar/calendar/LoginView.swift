//
//  LoginView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/13.
//

import UIKit

class LoginView: UIView {
    
     private lazy var contentsView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Col.base
        return view
    }()
    
    //MARK: - components
     lazy var emailTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.layer.borderColor = Col.customChar.cgColor
        textField.layer.borderWidth = 1.0
        textField.layer.cornerRadius = 12
        textField.placeholder = "メールアドレス"
        textField.textColor = .systemGray2
        textField.font = F.body
        textField.clearButtonMode = .always
        return textField
    }()
    
    lazy var passwordTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = Col.customChar.cgColor
        textField.layer.cornerRadius = 12
        textField.placeholder = "パスワード"
        textField.textColor = .systemGray2
        textField.font = F.body
        let overlayButton = UIButton(type: .system)
        overlayButton.setImage(UIImage(systemName:"eye"), for: .normal)
        overlayButton.addTarget(self, action: #selector(LoginViewController.eyeButtonPressed), for: .touchUpInside)
        overlayButton.sizeToFit()
        textField.rightView = overlayButton
        textField.rightViewMode = .always
        return textField
    }()
    
    private lazy var forgotPasswordButton:UIButton = {
        let button = UIButton(type: .system)
        let attributeTitle = NSAttributedString(string: "パスワード忘れてしまったら", attributes:  [
            .backgroundColor: UIColor.clear,
            .foregroundColor: UIColor.link,
            .font:F.subCaption
        ])
        button.setAttributedTitle(attributeTitle, for: .normal)
        return button
    }()
    
    private lazy var submitButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray5
        button.setTitle("ログイン", for: .normal)
        button.addTarget(self, action: #selector(LoginViewController.loginButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var createAccountButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("初めての方はアカウントを作成", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - stack View
    private lazy var textFieldStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [emailTextField,passwordTextField])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = Size.itemMargin
        stackView.alignment = .fill
        return stackView
    }()
    
    private lazy var submitButtonStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [submitButton,createAccountButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = Size.itemMargin
        stackView.alignment = .fill
        return stackView
    }()
    
    private lazy var componentStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [textFieldStackView,submitButtonStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = UIWindow().frame.height * 0.15
        return stackView
    }()
    
    
    private func setupComponent(){
        addSubview(contentsView)
        contentsView.addSubview(componentStackView)
    }
    
    private func setupLayout(){
        NSLayoutConstraint.activate([
            contentsView.topAnchor.constraint(equalTo: self.topAnchor),
            contentsView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            contentsView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            contentsView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            textFieldStackView.heightAnchor.constraint(equalToConstant: 114),
            textFieldStackView.widthAnchor.constraint(equalTo:contentsView.widthAnchor),
            submitButtonStackView.heightAnchor.constraint(equalToConstant: 114),
            submitButtonStackView.widthAnchor.constraint(equalTo: contentsView.widthAnchor),
            componentStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            componentStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: Size.contensMargin),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: contentsView.trailingAnchor)
        ])
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponent()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
