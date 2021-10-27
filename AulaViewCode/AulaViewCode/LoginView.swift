//
//  LoginView.swift
//  AulaViewCode
//
//  Created by Vitor Lentos on 26/10/21.
//

import UIKit


class LoginView: UIView {
    
    let dontHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        
        //VERIFICAR ISSO DEPOIS
        let titleAttributes: [NSAttributedString.Key : Any] = [
            .font: UIFont.systemFont(ofSize: 14),
            .foregroundColor: UIColor.lightGray
        ]
        let attributedTitle = NSMutableAttributedString(string: "Don't have an account? ",
                                                        attributes: titleAttributes)
        
        let signUpAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 14),
            .foregroundColor: UIColor.systemBlue
        ]
        attributedTitle.append(NSAttributedString(string: "Sign Up.",
                                                  attributes: signUpAttributes))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        
        return button
    }()
    
    let loginButton: UIButton = {
        let button = InstagramPrimaryButton(type: .system)
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    let passwordTextField: UITextField = {
        let textField = InstagramTextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = InstagramTextField()
        textField.placeholder = "Email"
        return textField
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let logoContainerView = LogoContainerView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension LoginView: ViewCode {
    func buildViewHierarchy() {
        addSubview(logoContainerView)
        addSubview(stackView)
        addSubview(dontHaveAccountButton)
    }
    
    func addConstrains() {
        logoContainerView.anchor(top: topAnchor,
                                 leading: leadingAnchor,
                                 bottom: nil,
                                 trailing: trailingAnchor,
                                 size: CGSize(width: 0, height: 150))
        stackView.anchor(top: logoContainerView.bottomAnchor,
                         leading: leadingAnchor,
                         bottom: nil,
                         trailing: trailingAnchor,
                         padding: UIEdgeInsets(top: 40,
                                               left: 40,
                                               bottom: 0,
                                               right: 40),
                         size: CGSize(width: 0, height: 140))
        dontHaveAccountButton.anchor(top: nil,
                                     leading: leadingAnchor,
                                     bottom: safeAreaLayoutGuide.bottomAnchor,
                                     trailing: trailingAnchor,
                                     size: CGSize(width: 0, height: 50))
    }
    
    func additionalConfiguration() {
        backgroundColor = .white
    }
    
    
}
