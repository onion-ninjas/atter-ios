//
//  NewEventConfigurator.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class NewEventConfigurator {
    func configureNewEventModule() -> NewEventViewController? {
        guard let viewController: NewEventViewController = R.storyboard.newEvent.newEventViewController() else {
            return nil
        }
        let router: NewEventRouter = NewEventRouter(viewController: viewController)
        let viewModel: NewEventViewModel = NewEventViewModel(presenter: viewController)
        
        viewController.router = router
        viewController.viewModel = viewModel
        
        return viewController
    }
}
