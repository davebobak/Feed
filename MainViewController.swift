//
//  MainViewController.swift
//  Feed
//
//  Created by Dave Bobak on 2014-06-26.
//  Copyright (c) 2014 Teehan+Lax. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate {

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
        
        scrollView.delegate = self
        
//        // Bottom gradient
//        var imageViewGradient:UIImageView = UIImageView(frame: CGRectMake(0, CGRectGetHeight(view.frame)-200, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
//        imageViewGradient.contentMode = UIViewContentMode.ScaleAspectFill
//        imageViewGradient.image = UIImage(named: "gradient")
//        if !imageViewGradient.image {
//            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
//            imageViewGradient.image = UIImage(named: "gradient.png")
//        }
//        view.addSubview(imageViewGradient)
        
        // Recipe 1 Image
        var imageViewR1:UIImageView = UIImageView(frame: CGRectMake(0, 0, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        imageViewR1.contentMode = UIViewContentMode.ScaleAspectFill
        imageViewR1.image = UIImage(named: "recipe1")
        if !imageViewR1.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            imageViewR1.image = UIImage(named: "recipe1.png")
        }
        imageViewR1.userInteractionEnabled = true
        scrollView.addSubview(imageViewR1)
        
        // Recipe 1 Title Label
        let labelR1:UILabel = UILabel()
        labelR1.frame = CGRectMake(20, CGRectGetHeight(view.frame)-40, CGRectGetWidth(view.frame), 20)
        labelR1.shadowColor = UIColor.blackColor()
        labelR1.shadowOffset = CGSizeMake(1, 1)
        labelR1.font = UIFont(name: "GillSans", size: 20)
        labelR1.text = "Blueberry Pancakes"
        labelR1.textColor = UIColor.whiteColor()
        labelR1.sizeToFit()
        scrollView.addSubview(labelR1)
        
        // Recipe 1 Save Button
        var imageViewSaveR1:UIImageView = UIImageView(frame: CGRectMake(0, 0, 15, 15))
        imageViewSaveR1.contentMode = UIViewContentMode.ScaleAspectFill
        imageViewSaveR1.image = UIImage(named: "heart")
        if !imageViewSaveR1.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            imageViewSaveR1.image = UIImage(named: "heart.png")
        }
    
        var buttonSaveR1 = UIButton.buttonWithType(.System) as UIButton // buttons are a unique type of UIView, need to be cast
        buttonSaveR1.frame = CGRect(x: CGRectGetWidth(view.frame)-30, y: CGRectGetHeight(view.frame)-35, width: 15, height: 15)
        buttonSaveR1.addTarget(self, action: "btnTouched:", forControlEvents:.TouchUpInside)
        
        buttonSaveR1.addSubview(imageViewSaveR1)
        scrollView.addSubview(buttonSaveR1)

        
        // Recipe 2 Image
        var imageViewR2:UIImageView = UIImageView(frame: CGRectMake(0, CGRectGetHeight(view.frame), CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        imageViewR2.contentMode = UIViewContentMode.ScaleAspectFill
        imageViewR2.image = UIImage(named: "recipe2")
        if !imageViewR2.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            imageViewR2.image = UIImage(named: "recipe2.png")
        }
        imageViewR2.userInteractionEnabled = true
        
        scrollView.addSubview(imageViewR2)

        // Recipe 2 Title Label
        let labelR2:UILabel = UILabel()
        labelR2.frame = CGRectMake(20, CGRectGetHeight(view.frame)*2-40, CGRectGetWidth(view.frame), 20)
        labelR2.shadowColor = UIColor.blackColor()
        labelR2.shadowOffset = CGSizeMake(1, 1)
        labelR2.font = UIFont(name: "GillSans", size: 20)
        labelR2.text = "Lemon Sorbet"
        labelR2.textColor = UIColor.whiteColor()
        labelR2.sizeToFit()
        
        scrollView.addSubview(labelR2)
        
        // Recipe 2 Save Button
        var imageViewSaveR2:UIImageView = UIImageView(frame: CGRectMake(0, 0, 15, 15))
        imageViewSaveR2.contentMode = UIViewContentMode.ScaleAspectFill
        imageViewSaveR2.image = UIImage(named: "heart")
        if !imageViewSaveR2.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            imageViewSaveR2.image = UIImage(named: "heart.png")
        }
        
        var buttonSaveR2 = UIButton.buttonWithType(.System) as UIButton // buttons are a unique type of UIView, need to be cast
        buttonSaveR2.frame = CGRect(x: CGRectGetWidth(view.frame)-30, y: CGRectGetHeight(view.frame)*2-35, width: 15, height: 15)
        buttonSaveR2.addTarget(self, action: "btnTouched:", forControlEvents:.TouchUpInside)
        
        buttonSaveR2.addSubview(imageViewSaveR2)
        scrollView.addSubview(buttonSaveR2)
        
        
        // Recipe 3 Image
        var imageViewR3:UIImageView = UIImageView(frame: CGRectMake(0, CGRectGetHeight(view.frame)*2, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        imageViewR3.contentMode = UIViewContentMode.ScaleAspectFill
        imageViewR3.image = UIImage(named: "recipe3")
        if !imageViewR3.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            imageViewR3.image = UIImage(named: "recipe3.png")
        }
        imageViewR3.userInteractionEnabled = true
        
        scrollView.addSubview(imageViewR3)
    
        // Recipe 2 Title Label
        let labelR3:UILabel = UILabel()
        labelR3.frame = CGRectMake(20, CGRectGetHeight(view.frame)*3-40, CGRectGetWidth(view.frame), 20)
        labelR3.shadowColor = UIColor.blackColor()
        labelR3.shadowOffset = CGSizeMake(1, 1)
        labelR3.font = UIFont(name: "GillSans", size: 20)
        labelR3.text = "Glazed Salmon"
        labelR3.textColor = UIColor.whiteColor()
        labelR3.sizeToFit()
        
        scrollView.addSubview(labelR3)
        
        // Recipe 3 Save Button
        var imageViewSaveR3:UIImageView = UIImageView(frame: CGRectMake(0, 0, 15, 15))
        imageViewSaveR3.contentMode = UIViewContentMode.ScaleAspectFill
        imageViewSaveR3.image = UIImage(named: "heart")
        if !imageViewSaveR3.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            imageViewSaveR3.image = UIImage(named: "heart.png")
        }
        
        var buttonSaveR3 = UIButton.buttonWithType(.System) as UIButton // buttons are a unique type of UIView, need to be cast
        buttonSaveR3.frame = CGRect(x: CGRectGetWidth(view.frame)-30, y: CGRectGetHeight(view.frame)*3-35, width: 15, height: 15)
        buttonSaveR3.addTarget(self, action: "btnTouched:", forControlEvents:.TouchUpInside)
        
        buttonSaveR3.addSubview(imageViewSaveR3)
        scrollView.addSubview(buttonSaveR3)
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        //print("scrolling")
    }
    

    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        
        // Height of frame: CGRectGetHeight(view.frame)
        
        // How do I access the offset? targetContentOffset?
        
        //print("scrollViewDidEndDecelerating")
    }
 
}


