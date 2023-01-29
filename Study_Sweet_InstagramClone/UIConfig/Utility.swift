//
//  Utility.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/29.
//

import Foundation
import SwiftUI

enum Utility {
    static var deviceSize : (width : CGFloat, height : CGFloat) {
        let bounds = UIScreen.main.bounds
        return (bounds.width, bounds.height)
    }
    
}
