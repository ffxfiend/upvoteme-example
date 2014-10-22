//
//  UMColors.swift
//  UpvoteMe
//
//  Created by Jeremiah Poisson on 10/19/14.
//  Copyright (c) 2014 Jeremiah Poisson. All rights reserved.
//

import UIKit

class UMColors: NSObject {
   
    func upvoteColor() -> UIColor {
        return UIColor(red: 1, green: 0.545, blue: 0.376, alpha: 1) // #FF8B60
    }
    
    func downvoteColor() -> UIColor {
        return UIColor(red: 0.576, green: 0.567, blue: 0.992, alpha: 1) // #9393FD
    }
    
    func scoreDefault() -> UIColor {
        return UIColor(red: 127.0 / 255.0, green: 127.0 / 255.0, blue:127.0 / 255.0, alpha: 1) // #7F7F7F
    }
    
}
