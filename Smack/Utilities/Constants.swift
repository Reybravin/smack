//
//  Constants.swift
//  Smack
//
//  Created by Sergiy Sachuk on 11/9/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success : Bool) -> ()
/*typealias = renaming:
 typealias Jonny = String
 let name: Jonny = "Jonny"
*/

//URL Constants
let BASE_URL = "https://chattychatss.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//Segue

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWID = "unwindToChannel"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
