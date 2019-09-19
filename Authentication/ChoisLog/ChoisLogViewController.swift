//
//  ChoisLogViewController.swift
//  GeekHomework
//
//  Created by Николя on 18/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class ChoisLogViewController: UIViewController {


    override func loadView() {
        view = ChoisLogView()
    }
    
    private var rootView: ChoisLogView? {
        return view as? ChoisLogView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func logPush() {
        show(LoginViewController(), sender: self)
    }

    func registerPush() {
        show(RegisterViewController(), sender: self)
    }
}
