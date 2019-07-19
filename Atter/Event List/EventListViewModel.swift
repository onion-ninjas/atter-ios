//
//  EventListViewModel.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class EventListViewModel: ViewModel {
    
    typealias Event = (name: String, date: String, attendees: Int)
    
    private(set) var events: [Event] = []
    
    weak var presenter: EventListPresenter?
    
    init(presenter: EventListPresenter) {
        self.presenter = presenter
    }
    
    func viewWillAppear() {
        events = [Event("Super event1", "13.07.19", 7),
                  Event("Jan Paweł", "21.37.19", 2),
                  Event("Lot do Sydney", "16.11.19", 4)]
        presenter?.reloadTableView()
    }
}
