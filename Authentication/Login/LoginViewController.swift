//
//  LoginViewController.swift
//  GeekHomework
//
//  Created by Николя on 18/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

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
}
