//
//  RegisterView.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit


class RegisterView: UIView {
    
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
            view.layer.shadowColor = UIColor.black.cgColor
            view.layer.shadowRadius = 4
            view.layer.masksToBounds = false
        
        return view
    }()
    
    
    lazy var logoView: UIView = {
        let view = UIView()
            view.backgroundColor = .blue
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
    
    lazy var borderNameView: UIView = {
        let view = UIView()
            view.backgroundColor = .lightGray
            view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var nameField: UITextField = {
        let field = UITextField()
            field.placeholder = "name"
            field.font = UIFont.systemFont(ofSize: 18)
            field.autocorrectionType = UITextAutocorrectionType.no
            field.keyboardType = UIKeyboardType.default
            field.returnKeyType = UIReturnKeyType.done
            field.clearButtonMode = UITextField.ViewMode.whileEditing
            field.autocapitalizationType = .none
            field.translatesAutoresizingMaskIntoConstraints = false
        
        return field
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
        
        return field
    }()
    
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
        
        return field
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
            button.backgroundColor = .white
            button.setTitleColor(.black, for: .normal)
            button.setTitle("log in", for: .normal)
            button.layer.cornerRadius = 0
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func buttonAction() {
        let parentVC = self.parentController(of: RegisterViewController.self)
        parentVC?.prepareFor()
        
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
        containerAuth.heightAnchor.constraint(equalToConstant: 150).isActive = true

        nameField.topAnchor.constraint(equalTo: containerAuth.topAnchor).isActive = true
        nameField.leftAnchor.constraint(equalTo: containerAuth.leftAnchor, constant: 10).isActive = true
        nameField.widthAnchor.constraint(equalTo: containerAuth.widthAnchor, constant: -10).isActive = true
        nameField.heightAnchor.constraint(equalTo: containerAuth.heightAnchor, multiplier: 1/3).isActive = true
        
        loginField.topAnchor.constraint(equalTo: nameField.bottomAnchor).isActive = true
        loginField.leftAnchor.constraint(equalTo: containerAuth.leftAnchor, constant: 10).isActive = true
        loginField.widthAnchor.constraint(equalTo: containerAuth.widthAnchor, constant: -10).isActive = true
        loginField.heightAnchor.constraint(equalTo: containerAuth.heightAnchor, multiplier: 1/3).isActive = true

        passField.topAnchor.constraint(equalTo: loginField.bottomAnchor).isActive = true
        passField.leftAnchor.constraint(equalTo: containerAuth.leftAnchor, constant: 10).isActive = true
        passField.widthAnchor.constraint(equalTo: containerAuth.widthAnchor, constant: -10).isActive = true
        passField.heightAnchor.constraint(equalTo: containerAuth.heightAnchor, multiplier: 1/3).isActive = true


    }
    
    
    func addingSubView() {
        addSubview(containerView)
        containerView.addSubview(containerAuth)
        containerView.addSubview(logoView)
        containerAuth.addSubview(nameField)
        containerAuth.addSubview(loginField)
        containerAuth.addSubview(passField)
        containerAuth.addSubview(borderLogView)
        containerAuth.addSubview(borderNameView)
        containerView.addSubview(loginButton)
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
        borderNameView.topAnchor.constraint(equalTo: nameField.bottomAnchor).isActive = true
        borderNameView.leftAnchor.constraint(equalTo: containerAuth.leftAnchor).isActive = true
        borderNameView.widthAnchor.constraint(equalTo: containerAuth.widthAnchor).isActive = true
        borderNameView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        borderLogView.topAnchor.constraint(equalTo: loginField.bottomAnchor).isActive = true
        borderLogView.leftAnchor.constraint(equalTo: containerAuth.leftAnchor).isActive = true
        borderLogView.widthAnchor.constraint(equalTo: containerAuth.widthAnchor).isActive = true
        borderLogView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: containerAuth.bottomAnchor, constant: 20).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
