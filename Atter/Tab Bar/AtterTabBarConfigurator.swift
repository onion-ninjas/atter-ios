//
//  AtterTabBarConfigurator.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class AtterTabBarConfigurator {
    func configureAtterTabBarModule() -> AtterTabBarViewController {
        let viewController: AtterTabBarViewController = AtterTabBarViewController()
        let router: AtterTabBarRouter = AtterTabBarRouter(viewController: viewController)
//        let viewModel: AtterTabBarViewModel = container.forceResolve(arguments: viewController as AtterTabBarPresenter)
        
        viewController.router = router
//        viewController.viewModel = viewModel
        
        //TODO: move view controllers configuration to separate modules
        let eventsVC = UIViewController()
        eventsVC.view.backgroundColor = .white
        eventsVC.tabBarItem.title = "Events"
        
        let peopleVC = UIViewController()
        peopleVC.view.backgroundColor = .brown
        peopleVC.tabBarItem.title = "People"
        
        viewController.viewControllers = [eventsVC, peopleVC]
        
        return viewController
    }
}
