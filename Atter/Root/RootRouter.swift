//
//  RootRouter.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class RootRouter {
    var window: UIWindow?
    
    init(window: UIWindow) {
        self.window = window
    }
}

extension RootRouter {
    func navigateToTabBar() {
        let tabBar = AtterTabBarConfigurator().configureAtterTabBarModule()
        
        window?.rootViewController = tabBar
    }
}
