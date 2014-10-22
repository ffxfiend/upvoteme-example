//
//  Config.swift
//  UpvoteMe
//
//  Created by Jeremiah Poisson on 10/19/14.
//  Copyright (c) 2014 Jeremiah Poisson. All rights reserved.
//

import UIKit

struct Config {
    
    let SCORE_KEY = "scoreKey"
    let UPVOTE_KEY = "upvoteKey"
    let DOWNVOTE_KEY = "downvoteKey"
    
    func twitterMessage(upvotes: Int) -> String {
        return "I got \(upvotes) upvotes. Booyah! #UpvoteMeApp"
    }
    
    func facebookMessage(upvotes: Int) -> String {
        return "I got \(upvotes) upvotes. Booyah! How many do you have from your UpvoteMe app?"
    }
    
    func isIPhone4() -> Bool {
        let screenSize = Int(UIScreen.mainScreen().bounds.size.height)
        return screenSize < 568 ? true : false;
    }
    
}
