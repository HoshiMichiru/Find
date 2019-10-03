//
//  Post.swift
//  Find
//
//  Created by 星みちる on 2019/10/03.
//  Copyright © 2019 星みちる. All rights reserved.
//

import Foundation
import Firebase

struct Post{
    let comment:String
    let cmID:String
    let senderID:String
    let updatetime:Timestamp
    
    init(data:[String:Any]) {
        comment = data["content"]as!String
        cmID = data["commentID"]as!String
        senderID = data["UserID"]as!String
        updatetime = data["updatetime"]as!Timestamp
    }
}
