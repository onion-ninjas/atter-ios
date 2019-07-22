//
//  NewEventViewController.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class NewEventViewController: UIViewController {
    
    @IBOutlet private weak var nameField: UITextField!
    @IBOutlet private weak var dateField: UITextField!
    @IBOutlet private weak var dateLabel: UILabel!
    
    @IBOutlet private weak var tableView: UITableView!
    
    private lazy var saveButton: UIBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: nil, action: nil)
    
    var viewModel: NewEventViewModel?
    var router: NewEventRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "New"
        setupSaveButton()
        setupNameField()
        setupDateField()
        
        viewModel?.viewDidLoad()
    }
}

extension NewEventViewController: NewEventPresenter {
    func setSaveButton(enabled: Bool) {
        saveButton.isEnabled = enabled
    }
    
    func display(date: String) {
        dateLabel.text = date
    }
    
    func dismiss() {
        router?.dismiss()
    }
}

private extension NewEventViewController {
    func setupSaveButton() {
        navigationItem.rightBarButtonItem = saveButton
        saveButton.target = viewModel
        saveButton.action = #selector(viewModel?.save)
    }
    
    func setupNameField() {
        nameField.addTarget(viewModel, action: #selector(viewModel?.didChange(nameField:)), for: .editingChanged)
    }
    
    func setupDateField() {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(viewModel, action: #selector(viewModel?.didChange(dateField:)), for: .valueChanged)
        
        dateField.inputView = datePicker
    }
}
