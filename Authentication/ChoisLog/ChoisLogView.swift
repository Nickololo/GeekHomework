//
//  ChoisLogView.swift
//  GeekHomework
//
//  Created by Николя on 19/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit


class ChoisLogView: UIView {
    
    
    var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    
    lazy var logoView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.6378424658, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 50
        
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("log in", for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(logAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc func logAction() {
        let parentVC = self.parentController(of: ChoisLogViewController.self)
            parentVC?.logPush()
        
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
        let parentVC = self.parentController(of: ChoisLogViewController.self)
            parentVC?.registerPush()
        
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .white
        addingSubView()
        setupContainerLogo()
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addingSubView()
        setupContainerLogo()
        setupButton()
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
    
    func setupButton() {
    
        loginButton.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 200).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, constant: 100).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20).isActive = true
        registerButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        registerButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, constant: 100).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func addingSubView() {
        addSubview(containerView)
        containerView.addSubview(logoView)
        containerView.addSubview(loginButton)
        containerView.addSubview(registerButton)
        
    }
    
}
