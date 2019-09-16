//
//  LoginAuthView.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit


class LoginAuthView: UIView {
    
    lazy var containerView: UIView = {
        let view = UIView()

        return view
    }()
    
    lazy var logoView: UIView = {
        let view = UIView()
            view.backgroundColor = .blue
        
        return view
    }()
    
    lazy var borderLogView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        
        return view
    }()
    
    lazy var borderPassView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        
        return view
    }()
    
    
    lazy var loginField: UITextField = {
        let field = UITextField()
            field.placeholder = "login"
            field.font = UIFont.systemFont(ofSize: 18)
            field.autocorrectionType = UITextAutocorrectionType.no
            field.keyboardType = UIKeyboardType.default
            field.returnKeyType = UIReturnKeyType.done
            field.clearButtonMode = UITextField.ViewMode.whileEditing
        
        return field
    }()
    
    lazy var passField: UITextField = {
        let field = UITextField()
            field.placeholder = "*****"
            field.isSecureTextEntry = true
            field.font = UIFont.systemFont(ofSize: 18)
            field.autocorrectionType = UITextAutocorrectionType.no
            field.keyboardType = UIKeyboardType.default
            field.returnKeyType = UIReturnKeyType.done
            field.clearButtonMode = UITextField.ViewMode.whileEditing
        
        
        return field
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
            button.backgroundColor = .white
            button.setTitleColor(.black, for: .normal)
            button.setTitle("log in", for: .normal)
            button.layer.cornerRadius = 0
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return button
    }()
    
    @objc func buttonAction() {
        let parentVC = self.parentController(of: AuthViewController.self)
        parentVC?.prepareFor()
        
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    
    func setupView() {
        addSubview(containerView)
        containerView.addSubview(logoView)
        containerView.addSubview(loginField)
        containerView.addSubview(borderLogView)
        containerView.addSubview(passField)
        containerView.addSubview(borderPassView)
        containerView.addSubview(loginButton)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
        logoView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        logoView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoView.heightAnchor.constraint(equalToConstant: 100).isActive = true

        loginField.translatesAutoresizingMaskIntoConstraints = false
        loginField.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 50).isActive = true
        loginField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        loginField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        loginField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        borderLogView.translatesAutoresizingMaskIntoConstraints = false
        borderLogView.topAnchor.constraint(equalTo: loginField.bottomAnchor).isActive = true
        borderLogView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        borderLogView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        borderLogView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        passField.translatesAutoresizingMaskIntoConstraints = false
        passField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 10).isActive = true
        passField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        passField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        borderPassView.translatesAutoresizingMaskIntoConstraints = false
        borderPassView.topAnchor.constraint(equalTo: passField.bottomAnchor).isActive = true
        borderPassView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        borderPassView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        borderPassView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passField.bottomAnchor, constant: 30).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        

    }
}
