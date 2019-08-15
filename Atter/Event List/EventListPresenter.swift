//
//  EventListPresenter.swift
//  Atter
//
//  Created by Patryk Mieszała on 15/08/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

protocol EventListPresenter: AnyObject {
    func reloadList()
    func navigateTo(event: Event)
}
