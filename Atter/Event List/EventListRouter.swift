//
//  EventListRouter.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit
import atter_logic

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
    
    func navigateToEventEdit(event: Event) {
        guard let newEvent = EventEditConfigurator().configureNewEventModule(event: event) else {
            return
        }
        
        viewController?.navigationController?.pushViewController(newEvent, animated: true)
    }
}
