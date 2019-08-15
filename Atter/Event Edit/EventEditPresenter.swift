//
//  EventEditPresenter.swift
//  Atter
//
//  Created by Patryk Mieszała on 15/08/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import Foundation

protocol EventEditPresenter: AnyObject {
    func display(name: String)
    func display(date: Date)
    func setSaveButton(enabled: Bool)
    func dismiss()
}
