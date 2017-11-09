//
//  ChannelVC.swift
//  Smack
//
//  Created by Sergiy Sachuk on 11/9/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlets
    @IBOutlet weak var loginBtn: UIButton! //to change the title of the button to the user's name
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
