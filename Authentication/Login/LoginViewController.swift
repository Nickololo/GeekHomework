//
//  LoginViewController.swift
//  GeekHomework
//
//  Created by Николя on 18/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage


class LoginViewController: UIViewController {

    
    override func loadView() {
        view = LoginView()
    }
    
    private var rootView: LoginView? {
        return view as? LoginView
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func registerPush() {
        self.performSegue(withIdentifier: "LoginView", sender: self)
        
    }
    
    func loginPush() {
        guard let email = rootView?.loginField.text,
            let password = rootView?.passField.text
            else {
                print("Form is not valid")
                return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, err) in
            if err != nil { print(err as Any)
                self.showEnterError()
                return
            }
            self.performSegue(withIdentifier: "LoginViewController", sender: self)
            
        }
    }
    
    func showEnterError() {
        let alert = UIAlertController(title: "Ошибочка" , message: "Попробуй еще раз", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok" , style: .default)
        alert.addAction(action)
        
        present(alert, animated: true)
    }
}
