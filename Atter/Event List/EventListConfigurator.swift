//
//  EventListConfigurator.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class EventListConfigurator {
    func configureEventListModule() -> UINavigationController? {
        guard let viewController: EventListViewController = R.storyboard.eventList.eventListViewController() else {
            return nil
        }
        let router: EventListRouter = EventListRouter(viewController: viewController)
        let viewModel: EventListViewModel = EventListViewModel(presenter: viewController)
        
        viewController.router = router
        viewController.viewModel = viewModel
        
        let nvc = UINavigationController(rootViewController: viewController)
        
        return nvc
    }
}
