//
//  AtterTabBarConfigurator.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class AtterTabBarConfigurator {
    func configureAtterTabBarModule() -> AtterTabBarViewController? {
        let viewController: AtterTabBarViewController = AtterTabBarViewController()
        let router: AtterTabBarRouter = AtterTabBarRouter(viewController: viewController)
        
        viewController.router = router
        
        guard let events = EventListConfigurator().configureEventListModule() else {
            return nil
        }
        
        events.tabBarItem.title = "Events"
        
        //TODO: move view controllers configuration to separate modules
        let peopleVC = UIViewController()
        peopleVC.view.backgroundColor = .brown
        peopleVC.tabBarItem.title = "People"
        
        viewController.viewControllers = [events, peopleVC]
        
        return viewController
    }
}
