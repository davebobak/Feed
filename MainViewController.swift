//
//  MainViewController.swift
//  Feed
//
//  Created by Dave Bobak on 2014-06-26.
//  Copyright (c) 2014 Teehan+Lax. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var scrollView: UIScrollView!
    
    // force a light status bar style
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    // only allow portrait orientation in this view
    override func shouldAutorotate() -> Bool  {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView(frame: view.bounds)  // Fill the whole screen
        scrollView.contentSize = CGSize(width: CGRectGetWidth(view.bounds), height: 9000)
        scrollView.alwaysBounceVertical = true
        
        view.addSubview(scrollView);
        
        let titleLabel:UILabel = UILabel()
        titleLabel.shadowColor = UIColor.blackColor()
        titleLabel.shadowOffset = CGSizeMake(1, 1)
        titleLabel.font = UIFont(name: "GillSans", size: 20)
        titleLabel.text = "504 Streetcar"
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.sizeToFit()
        navigationItem.titleView = titleLabel
        
        
        var button = UIButton.buttonWithType(.System) as UIButton // buttons are a unique type of UIView, need to be cast\
        button.setTitle("Hey Dave", forState: .Normal)
        button.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        scrollView.addSubview(button)
        
    }
    
    
//    func scrollViewDidScroll(scrollView: UIScrollView!) {
//        print("scrolling")
//    }
//    
//    func scrollViewWillEndDragging(scrollView: UIScrollView!, velocity: CGPoint, targetContentOffset: CMutablePointer<CGPoint>) {
//        
//        print("scroll stopped")
//    }
    
}


