//
//  EventEditViewModel.swift
//  Atter
//
//  Created by Patryk Mieszała on 15/08/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class EventEditViewModel: ViewModel {
    
    private var id: String?
    private var name: String
    private var date: Date
    private var attendees: [Person]
    
    private weak var presenter: EventEditPresenter?
    private let database = AtterDatabase()
    
    init(presenter: EventEditPresenter, event: Event?) {
        self.presenter = presenter
        
        id = event?.id
        name = event?.name ?? ""
        date = event?.date ?? Date()
        attendees = event?.attendees ?? []
    }
    
    func viewDidLoad() {
        presenter?.display(name: name)
        presenter?.display(date: date)
    }
    
    func didChange(name: String) {
        self.name = name
    }
    
    func didChange(date: Date) {
        self.date = date
        presenter?.display(date: date)
    }
    
    @objc
    func save() {
        let event = Event(id: id ?? NSUUID().uuidString,
                          name: name,
                          date: date,
                          attendees: attendees)
        database.save(event: event)
        presenter?.dismiss()
    }
}
