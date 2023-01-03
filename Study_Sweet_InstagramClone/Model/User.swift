//
//  User.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/03.
//

import Foundation

struct User : Identifiable {
    let id : String = UUID().uuidString
    let userId : String
    var userName : String
    var imageURL : String
}

