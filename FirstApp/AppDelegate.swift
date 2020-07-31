//
//  AppDelegate.swift
//  FirstApp
//
//  Created by Eldar on 23.07.2020.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let rootViewController: UIViewController
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        if let regInfo = UserDefaults.standard.string(forKey: "RegInfo") {
            rootViewController = storyBoard.instantiateViewController(withIdentifier: "MainVC")
            (rootViewController as! MainPageViewController).text = regInfo
        } else {
            rootViewController = storyBoard.instantiateViewController(withIdentifier: "FirstVC")
        }
        
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        
        return true
    }


}

