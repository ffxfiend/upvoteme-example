//
//  ViewController.swift
//  UpvoteMe
//
//  Created by Jeremiah Poisson on 10/19/14.
//  Copyright (c) 2014 Jeremiah Poisson. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {

    @IBOutlet weak var upvoteConstrant: NSLayoutConstraint!
    @IBOutlet weak var downvoteConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var adBanner: ADBannerView!
    
    let config: Config = Config()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (config.isIPhone4()) {
            upvoteConstrant.constant = -17
            downvoteConstraint.constant = -17
        } else {
            upvoteConstrant.constant = 8
            downvoteConstraint.constant = 8
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Delegate Methods
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        NSLog("Ad Banner did load ad")
        
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        NSLog("Unable to show ads. Error: %@", error.localizedDescription)
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.adBanner.alpha = 0
        })
        
    }

}

