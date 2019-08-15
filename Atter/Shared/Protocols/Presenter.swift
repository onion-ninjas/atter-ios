//
//  Presenter.swift
//  Atter
//
//  Created by Patryk Mieszała on 15/08/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import Foundation

@objc
public protocol Presenter: AnyObject {
    func presentError(error: Error)
    func presentLoading(state: RequestState)
}

//TODO: move to other file
@objc
public enum RequestState: Int {
    case executing, finished
}
