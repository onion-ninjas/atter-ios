//
//  EventListViewModel.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit
import atter_logic

final class EventListViewModel: ViewModel {
    
    private let getEventUseCase: GetEvents
    private(set) var events: [Event] = []
    
    weak var presenter: EventListPresenter?
    
    init(presenter: EventListPresenter, getEventUseCase: GetEvents = .init()) {
        self.presenter = presenter
        self.getEventUseCase = getEventUseCase
    }
    
    func viewWillAppear() {
        events = getEventUseCase.invoke()
        presenter?.reloadTableView()
    }
}
