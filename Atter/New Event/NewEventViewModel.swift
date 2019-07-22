//
//  NewEventViewModel.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit
import atter_logic

final class NewEventViewModel: ViewModel {
    
    private weak var presenter: NewEventPresenter?
    private var name: String?
    private var date: Date = Date()
    
    private var dateString: String {
        let df = DateFormatter()
        df.dateStyle = .full
        df.timeStyle = .none
        
        return df.string(from: date)
    }
    
    private let newEventUseCase: SaveEvent
    
    init(presenter: NewEventPresenter, newEventUseCase: SaveEvent = .init()) {
        self.presenter = presenter
        self.newEventUseCase = newEventUseCase
    }
    
    func viewDidLoad() {
        refreshSaveButtonStatus()
        presenter?.display(date: dateString)
    }
    
    @objc
    func didChange(nameField: UITextField) {
        self.name = nameField.text
        
        refreshSaveButtonStatus()
    }
    
    @objc
    func didChange(dateField: UIDatePicker) {
        let date = dateField.date
        self.date = date
        
        presenter?.display(date: dateString)
        refreshSaveButtonStatus()
    }
    
    @objc
    func save() {
        guard let name = name else {
            return
        }
        
        let kDate = KDate(date: date)
        let event = Event(id: NSUUID().uuidString, name: name, eventDate: kDate, attendeesCount: 0)
        guard newEventUseCase.save(event: event) != nil else {
            //TODO: handle error or smth
            return
        }
        
        presenter?.dismiss()
    }
}

private extension NewEventViewModel {
    func refreshSaveButtonStatus() {
        let nameValidated = (name?.count ?? 0) > 2
        
        let enabled = nameValidated
        
        presenter?.setSaveButton(enabled: enabled)
    }
}
