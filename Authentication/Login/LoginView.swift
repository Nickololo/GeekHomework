//
//  LoginView.swift
//  GeekHomework
//
//  Created by Николя on 18/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class LoginView: UIView {

    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var containerAuth: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.layer.shadowOffset = .zero
        view.layer.shadowOpacity = 0.2
        view.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        view.layer.shadowRadius = 4
        view.layer.masksToBounds = false
        
        return view
    }()
    
    
    lazy var logoView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.6378424658, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 50
        
        return view
    }()
    
    lazy var borderLogView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var loginField: UITextField = {
        let field = UITextField()
        field.placeholder = "e-mail"
        field.font = UIFont.systemFont(ofSize: 18)
        field.autocorrectionType = UITextAutocorrectionType.no
        field.keyboardType = UIKeyboardType.default
        field.returnKeyType = UIReturnKeyType.done
        field.clearButtonMode = UITextField.ViewMode.whileEditing
        field.autocapitalizationType = .none
        field.translatesAutoresizingMaskIntoConstraints = false
        field.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        
        return field
    }()
    @objc private func handleTextInputChange() {
        let isFormValid = loginField.text?.count ?? 0 > 0 && passField.text?.count ?? 0 > 0
        
        if isFormValid {
            loginButton.backgroundColor = #colorLiteral(red: 0.5845194778, green: 1, blue: 1, alpha: 0.5428617295)
            loginButton.isEnabled = true
        } else {
            loginButton.backgroundColor = #colorLiteral(red: 0.7907480737, green: 1, blue: 1, alpha: 0.5970408818)
            loginButton.isEnabled = false
        }
    }
    
    lazy var passField: UITextField = {
        let field = UITextField()
        field.placeholder = "password"
        field.isSecureTextEntry = true
        field.font = UIFont.systemFont(ofSize: 18)
        field.autocorrectionType = UITextAutocorrectionType.no
        field.keyboardType = UIKeyboardType.default
        field.returnKeyType = UIReturnKeyType.done
        field.clearButtonMode = UITextField.ViewMode.whileEditing
        field.autocapitalizationType = .none
        field.translatesAutoresizingMaskIntoConstraints = false
        field.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        
        return field
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("log in", for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func buttonAction() {
        let parentVC = self.parentController(of: LoginViewController.self)
            parentVC?.loginPush()
    }
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("registration", for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(registerAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func registerAction() {
        let parentVC = self.parentController(of: LoginViewController.self)
        parentVC?.registerPush()
        
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .white
        addingSubView()
        setupContainerLogo()
        setupView()
        setupBorderButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addingSubView()
        setupContainerLogo()
        setupView()
        setupBorderButton()
    }
    
    
    func setupView() {
        
        containerAuth.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        containerAuth.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        containerAuth.widthAnchor.constraint(equalTo: containerView.widthAnchor, constant: -30).isActive = true
        containerAuth.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        loginField.topAnchor.constraint(equalTo: containerAuth.topAnchor).isActive = true
        loginField.leftAnchor.constraint(equalTo: containerAuth.leftAnchor, constant: 10).isActive = true
        loginField.widthAnchor.constraint(equalTo: containerAuth.widthAnchor, constant: -10).isActive = true
        loginField.heightAnchor.constraint(equalTo: containerAuth.heightAnchor, multiplier: 1/2).isActive = true
        
        passField.topAnchor.constraint(equalTo: loginField.bottomAnchor).isActive = true
        passField.leftAnchor.constraint(equalTo: containerAuth.leftAnchor, constant: 10).isActive = true
        passField.widthAnchor.constraint(equalTo: containerAuth.widthAnchor, constant: -10).isActive = true
        passField.heightAnchor.constraint(equalTo: containerAuth.heightAnchor, multiplier: 1/2).isActive = true
        
        
    }
    
    
    func addingSubView() {
        addSubview(containerView)
        containerView.addSubview(containerAuth)
        containerView.addSubview(logoView)
        containerAuth.addSubview(loginField)
        containerAuth.addSubview(passField)
        containerAuth.addSubview(borderLogView)
        containerView.addSubview(loginButton)
        containerView.addSubview(registerButton)
    }
    
    
    func setupContainerLogo() {
        containerView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        logoView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 80).isActive = true
        logoView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        logoView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setupBorderButton() {
        
        borderLogView.topAnchor.constraint(equalTo: loginField.bottomAnchor).isActive = true
        borderLogView.leftAnchor.constraint(equalTo: containerAuth.leftAnchor).isActive = true
        borderLogView.widthAnchor.constraint(equalTo: containerAuth.widthAnchor).isActive = true
        borderLogView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: containerAuth.bottomAnchor, constant: 20).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        registerButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        registerButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        registerButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, constant: 100).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }

}
