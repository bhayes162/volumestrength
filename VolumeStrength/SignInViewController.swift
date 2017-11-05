//
//  SignInViewController.swift
//  VolumeStrength
//
//  Created by Bryan Hayes on 11/5/17.
//  Copyright © 2017 DiGiHayes. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase


class SignInViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func signinTapped(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: usernameTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            print("We tried to sign in")
            if error != nil {
                print("Hey we have an error:\(error)")
            
                Auth.auth().createUser(withEmail: self.usernameTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("we tried to create a user")
                    if error != nil {
                        print("Hey we have an error:\(error)")
                    } else {
                        print("We created a user successfully")
                        self.performSegue(withIdentifier: "signinsegue", sender: nil)
                    }
                })
            
            } else {
                print("Signed in successfully")
                self.performSegue(withIdentifier: "signinsegue", sender: nil)
            }
            
            
        })
        
    }
    
}

