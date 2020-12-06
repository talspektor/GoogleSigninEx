//
//  ViewController.swift
//  GoogleSigninEx
//
//  Created by Tal Spektor on 06/12/2020.
//  Copyright © 2020 Tal Spektor. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {
    
    @IBOutlet var signinButton: GIDSignInButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if GIDSignIn.sharedInstance()?.currentUser != nil {
            // signed in
        }
        else {
            GIDSignIn.sharedInstance()?.signIn()
        }
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
    }


}

