//
//  AppDelegate.swift
//  youtube
//
//  Created by Ryan Nazari on 3/6/19.
//  Copyright © 2019 Ryan Nazari. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let layout = UICollectionViewFlowLayout()
        
        //one way to make scroll horizentally
        //layout.scrollDirection = .horizontal
        
        window?.rootViewController = UINavigationController(rootViewController: HomeController(collectionViewLayout: layout))

        UINavigationBar.appearance().barTintColor = UIColor.rgb(red: 230, green: 32, blue: 31)
//        application.statusBarStyle = .lightContent
        
       
        let statusBarBackgroundView: UIView = {
            let statusBar = UIView()
            statusBar.backgroundColor = UIColor.rgb(red: 194, green: 31, blue: 31)
            return statusBar
        }()
        
        window?.addSubview(statusBarBackgroundView)
        window?.addConstraintsWithFormat(format: "H:|[v0]|", views: statusBarBackgroundView)
        let height = application.statusBarFrame.height
        window?.addConstraintsWithFormat(format: "V:|[v0(\(height))]", views: statusBarBackgroundView)

        //get rid of black bar underneath navbar
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        return true
    }

 
}
