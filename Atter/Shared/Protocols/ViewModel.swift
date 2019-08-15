//
//  ViewModel.swift
//  Atter
//
//  Created by Patryk Mieszała on 15/08/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import Foundation

protocol ViewModel: AnyObject {
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

extension ViewModel {
    func viewDidLoad() { }
    func viewWillAppear() { }
    func viewDidAppear() { }
    func viewWillDisappear() { }
    func viewDidDisappear() { }
}

