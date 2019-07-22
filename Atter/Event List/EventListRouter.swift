//
//  EventListRouter.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class EventListRouter {
    
    weak var viewController: EventListViewController?
    
    init(viewController: EventListViewController?) {
        self.viewController = viewController
    }
}

extension EventListRouter {
    @objc
    func navigateToNewEvent() {
        guard let newEvent = EventEditConfigurator().configureNewEventModule(event: nil) else {
            return
        }
        
        viewController?.navigationController?.pushViewController(newEvent, animated: true)
    }
}
