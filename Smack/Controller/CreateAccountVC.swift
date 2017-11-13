//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Sergiy Sachuk on 11/9/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var userNaneTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func createAccntPressed(_ sender: Any) {
        
        //creating variables for emails and passwords
        guard let email = emailTxt.text , emailTxt.text != "" else{ return } // guard statement is another way unwrapping optional values. "," stands for "where". It is to check if emailTxt.text does not equal to epmty string.
        guard let pass = passTxt.text , passTxt.text != "" else { return }
        
        //passing the values to the register user function when we click a Register user btn
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            
            if success {
                print("registered user!ß")
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWID, sender: nil)
    }
    

    
}
