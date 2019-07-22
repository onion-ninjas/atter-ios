//
//  EventEditPresenter.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import Foundation

protocol EventEditPresenter: AnyObject {
    func setSaveButton(enabled: Bool)
    func display(date: String)
    func dismiss()
}
