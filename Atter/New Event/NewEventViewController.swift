//
//  NewEventViewController.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class NewEventViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    var viewModel: NewEventViewModel?
    var router: NewEventRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "New"
    }
}

extension NewEventViewController: NewEventPresenter {}
