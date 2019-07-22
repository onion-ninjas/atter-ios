//
//  EventListPresenter.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import atter_logic

protocol EventListPresenter: AnyObject {
    func reloadTableView()
    func navigate(to event: Event)
}
