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
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
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
        // TODO: ideally the height becomes a multiple of an array index count
        scrollView.contentSize = CGSize(width: CGRectGetWidth(view.bounds), height: CGRectGetHeight(view.bounds) * 3)
        scrollView.alwaysBounceVertical = true
        
        view.addSubview(scrollView);
        
        
        // Recipe 1 Image
        var recipe1ImageView:UIImageView = UIImageView(frame: CGRectMake(0, 0, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        recipe1ImageView.contentMode = UIViewContentMode.ScaleAspectFill
        recipe1ImageView.image = UIImage(named: "recipe1")
        if !recipe1ImageView.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            recipe1ImageView.image = UIImage(named: "recipe1.png")
        }
        scrollView.addSubview(recipe1ImageView)
        
        let recipe1Label:UILabel = UILabel()
        recipe1Label.shadowColor = UIColor.blackColor()
        recipe1Label.shadowOffset = CGSizeMake(1, 1)
        recipe1Label.font = UIFont(name: "GillSans", size: 20)
        recipe1Label.text = "Blueberry Pancakes"
        recipe1Label.textColor = UIColor.whiteColor()
        recipe1Label.sizeToFit()

        scrollView.addSubview(recipe1Label)
        
        // Recipe 2 Image
        var recipe2ImageView:UIImageView = UIImageView(frame: CGRectMake(0, CGRectGetHeight(view.frame), CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        recipe2ImageView.contentMode = UIViewContentMode.ScaleAspectFill
        recipe2ImageView.image = UIImage(named: "recipe2")
        if !recipe2ImageView.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            recipe2ImageView.image = UIImage(named: "recipe2.png")
        }
        scrollView.addSubview(recipe2ImageView)
        
        // Recipe 3 Image
        var recipe3ImageView:UIImageView = UIImageView(frame: CGRectMake(0, CGRectGetHeight(view.frame)*2, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        recipe3ImageView.contentMode = UIViewContentMode.ScaleAspectFill
        recipe3ImageView.image = UIImage(named: "recipe3")
        if !recipe3ImageView.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            recipe3ImageView.image = UIImage(named: "recipe3.png")
        }
        scrollView.addSubview(recipe3ImageView)
        
                   
        var button = UIButton.buttonWithType(.System) as UIButton // buttons are a unique type of UIView, need to be cast\
        button.setTitle("Hey Dave", forState: .Normal)
        button.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        scrollView.addSubview(button)
        
        
        let titleLabel:UILabel = UILabel()
        titleLabel.shadowColor = UIColor.blackColor()
        titleLabel.shadowOffset = CGSizeMake(1, 1)
        titleLabel.font = UIFont(name: "GillSans", size: 20)
        titleLabel.text = "504 Streetcar"
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.sizeToFit()
        navigationItem.titleView = titleLabel
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


