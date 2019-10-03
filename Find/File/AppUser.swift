//
//  AppUser.swift
//  Find
//
//  Created by 星みちる on 2019/10/03.
//  Copyright © 2019 星みちる. All rights reserved.
//

import Foundation
import Firebase

struct AppUser {
    let userID:String
    let userName:String
    
    init(data:[String:Any]) {
        userID = data["userID"]as!String
        userName = data["userName"]as!String
    }
}
