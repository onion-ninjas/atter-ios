//
//  EventEditViewController.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright (c) 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

final class EventEditViewController: UIViewController {
    
    @IBOutlet private weak var nameField: UITextField!
    @IBOutlet private weak var dateField: UITextField!
    @IBOutlet private weak var dateLabel: UILabel!
    
    @IBOutlet private weak var tableView: UITableView!
    
    private lazy var saveButton: UIBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: nil, action: nil)
    
    var viewModel: EventEditViewModel?
    var router: EventEditRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "New"
        setupSaveButton()
        setupNameField()
        setupDateField()
        
        viewModel?.viewDidLoad()
    }
}

extension EventEditViewController: EventEditPresenter {
    func display(name: String) {
        nameField.text = name
    }
    
    func display(date: Date) {
        let df = DateFormatter()
        df.dateStyle = .full
        
        dateLabel.text = df.string(from: date)
    }
    
    func setSaveButton(enabled: Bool) {
        saveButton.isEnabled = enabled
    }
    
    func dismiss() {
        router?.dismiss()
    }
}

private extension EventEditViewController {
    func setupSaveButton() {
        navigationItem.rightBarButtonItem = saveButton
        saveButton.target = viewModel
        saveButton.action = #selector(viewModel?.save)
    }
    
    func setupNameField() {
        nameField.addTarget(self, action: #selector(didChange(nameField:)), for: .editingChanged)
    }
    
    func setupDateField() {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(didChange(dateField:)), for: .valueChanged)
        
        dateField.inputView = datePicker
    }
    
    @objc
    func didChange(nameField: UITextField) {
        viewModel?.didChange(name: nameField.text ?? "")
    }
    
    @objc
    func didChange(dateField: UIDatePicker) {
        viewModel?.didChange(date: dateField.date)
    }
}
