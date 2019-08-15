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
    
    init(presenter: EventListPresenter) {
        self.presenter = presenter
        events = (1..<100).map {
            Event(
                id: "\($0)",
                name: "Event \($0)",
                date: Date(),
                attendees: []
            )
        }
    }
    
    func viewWillAppear() {
        presenter?.reloadList()
    }
    
    func didSelectRow(atIndex index: Int) {
        let event = events[index]
        presenter?.navigateTo(event: event)
    }
}
