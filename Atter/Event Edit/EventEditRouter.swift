//
//  EventEditRouter.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class EventEditRouter {
    
    weak var viewController: EventEditViewController?
    
    init(viewController: EventEditViewController?) {
        self.viewController = viewController
    }
}

extension EventEditRouter {
    func dismiss() {
        viewController?.navigationController?.popViewController(animated: true)
    }
}
