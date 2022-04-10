//
//  AppDelegate.swift
//  PopOverSample
//
//  Created by Sercan KAYA on 10.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
            let window = UIWindow()
            window.rootViewController = ViewController()
            self.window = window
            window.makeKeyAndVisible()
        
        return true
    }
}

