//
//  AppDelegate.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var rootRouter: RootRouter?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        window.makeKeyAndVisible()
        
        let router = RootRouter(window: window)
        router.navigateToTabBar()
        self.rootRouter = router
        
        return true
    }
}
