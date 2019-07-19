//
//  NewEventRouter.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class NewEventRouter {
    
    weak var viewController: NewEventViewController?
    
    init(viewController: NewEventViewController?) {
        self.viewController = viewController
    }
}

extension NewEventRouter {}
