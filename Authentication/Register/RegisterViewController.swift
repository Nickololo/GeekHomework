//
//  RegisterViewController.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage


class RegisterViewController: UIViewController {


    override func loadView() {
        view = RegisterView()
    }
    
    private var rootView: RegisterView? {
        return view as? RegisterView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func createUser() {
        guard let email = rootView?.loginField.text,
            let password = rootView?.passField.text,
            let name = rootView?.nameField.text
            else {
            print("Form is not valid")
                return
        }
        
        // 2
        Auth.auth().createUser(withEmail: email, password: password) { user, error in
            if error != nil { print(error as Any)
                return
            }
            
            guard let uid = user?.user.uid else { return }
            
            let ref = Database.database().reference(fromURL: "https://geekhomework-f863a.firebaseio.com/")
            let userRef = ref.child("users").child(uid)
            let value = ["name": name, "email": email]
            
            userRef.updateChildValues(value, withCompletionBlock: { (err, ref) in
                if let err = err {
                    print("Failed to save user to Firebase: ", err.localizedDescription)
                    return
                }
                print("Saved user successfully into FirebaseDatabase")
                self.performSegue(withIdentifier: "RegisterViewController", sender: self)
            })
        }
    }
    
    func prepareFor() {
        
        if rootView?.loginField.text == "" && rootView?.passField.text == "" {
            self.performSegue(withIdentifier: "RegisterViewController", sender: self)
            
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
    
    func logPush() {
        self.dismiss(animated: true, completion: nil)
    }
    
}

