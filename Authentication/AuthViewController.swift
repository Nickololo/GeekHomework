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
    
    func prepareFor() {
        
        if rootView?.loginField.text == "Log" && rootView?.passField.text == "pass" {
            self.performSegue(withIdentifier: "TabBarController", sender: self)
        } else {
            showEnterError()
        }
    }
    
    func showEnterError() {
        let alert = UIAlertController(title: "Ошибочка" , message: "Попробуй еще раз", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok" , style: .default)
        alert.addAction(action)
        
        present(alert, animated: true)
    }
}

