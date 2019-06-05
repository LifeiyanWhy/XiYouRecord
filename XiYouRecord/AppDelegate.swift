//
//  AppDelegate.swift
//  XiYouRecord
//
//  Created by 李飞艳 on 2019/6/5.
//  Copyright © 2019年 李飞艳. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let homeViewController: HomeViewController = HomeViewController.init()
        let homeNavController: UINavigationController = UINavigationController.init(rootViewController: homeViewController)
        homeNavController.tabBarItem.title = "首页"
        homeNavController.tabBarItem.image = UIImage.init(named: "home.png")?.withRenderingMode(.alwaysOriginal)
        homeNavController.tabBarItem.selectedImage = UIImage.init(named: "homeSelcet.png")?.withRenderingMode(.alwaysOriginal)
        homeNavController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black], for: UIControl.State.normal)
        homeNavController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor(hexString: "#f68c60")
            ], for: UIControl.State.selected)
        
        
        let mineViewController: MineViewController = MineViewController.init()
        let mineNavController: UINavigationController = UINavigationController.init(rootViewController: mineViewController)
        mineNavController.tabBarItem.title = "我的"
        mineNavController.tabBarItem.image = UIImage.init(named: "mine.png")?.withRenderingMode(.alwaysOriginal)
        mineNavController.tabBarItem.selectedImage = UIImage.init(named: "mineSelect.png")?.withRenderingMode(.alwaysOriginal)
        mineNavController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black], for: UIControl.State.normal)
        mineNavController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor(hexString: "#f68c60")], for: UIControl.State.selected)
        
        let tabBarViewController: UITabBarController = UITabBarController.init()
        tabBarViewController.viewControllers = [homeNavController, mineNavController]
        tabBarViewController.selectedViewController = homeNavController
        tabBarViewController.tabBar.barTintColor = UIColor.white
        tabBarViewController.tabBar.isTranslucent = false
        
        self.window?.rootViewController = tabBarViewController
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

