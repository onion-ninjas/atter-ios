//
//  NewEventViewModel.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit
import atter_logic

final class NewEventViewModel {
    
    weak var presenter: NewEventPresenter?
    
    private let newEventUseCase: SaveEvent
    
    init(presenter: NewEventPresenter, newEventUseCase: SaveEvent = .init()) {
        self.presenter = presenter
        self.newEventUseCase = newEventUseCase
    }
}
