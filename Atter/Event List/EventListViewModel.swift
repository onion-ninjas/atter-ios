//
//  EventListViewModel.swift
//  Atter
//
//  Created by Patryk Mieszała on 15/08/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class EventListViewModel: ViewModel {
    
    private(set) var events: [Event]
    
    private weak var presenter: EventListPresenter?
    private let database = AtterDatabase()
    
    init(presenter: EventListPresenter) {
        self.presenter = presenter
        self.events = database.getEvents()
    }
    
    func viewWillAppear() {
        events = database.getEvents()
        presenter?.reloadList()
    }
    
    func didSelectRow(atIndex index: Int) {
        let event = events[index]
        presenter?.navigateTo(event: event)
    }
}
