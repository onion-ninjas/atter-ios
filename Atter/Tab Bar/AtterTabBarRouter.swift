//
//  AtterTabBarRouter.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class AtterTabBarRouter {
    
    weak var viewController: AtterTabBarViewController?
    
    init(viewController: AtterTabBarViewController?) {
        self.viewController = viewController
    }
}

extension AtterTabBarRouter {}
