//
//  AppDelegate.swift
//  Feed
//
//  Created by Dave Bobak on 2014-06-26.
//  Copyright (c) 2014 Teehan+Lax. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // Override point for customization after application launch.
        let mainVC = MainViewController(nibName: nil, bundle: nil)
        self.window!.rootViewController = mainVC
        //self.window!.rootViewController = UINavigationController(rootViewController: mainVC)
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }

}

