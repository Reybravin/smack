//
//  UserDataService.swift
//  Smack
//
//  Created by Sergiy Sachuk on 11/14/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    public private(set) var id = "" //public - other classes can see it but cannot change/set.
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    //function to set variables
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String){
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    //function to update avatar name
    func setAvatarName(avatarName: String){
        self.avatarName = avatarName
    }
}
