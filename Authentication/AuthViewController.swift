//
//  AuthViewController.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {


    
    override func loadView() {
        view = LoginAuthView()
    }
    
    private var rootView: LoginAuthView? {
        return view as? LoginAuthView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


  
    

    
 
    
    func usersDataIsRight() -> Bool {
        guard let login = rootView?.loginField.text else { return false }
        guard let password = rootView?.passField.text else { return false }
        
        return login == "login" && password == "pass"
        
    }
    
    func showEnterError() {
        let alert = UIAlertController(title: "Ошибочка" , message: "Попробуй еще раз", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok" , style: .default)
        alert.addAction(action)
        
        present(alert, animated: true)
    }
    
    func prepareFor() {
        
        if rootView?.loginField.text == "log" && rootView?.passField.text == "pass" {
            self.performSegue(withIdentifier: "TabBarController", sender: self)
        } else {
            showEnterError()
        }
    }
}

