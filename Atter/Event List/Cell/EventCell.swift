//
//  EventCell.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var attendeesLabel: UILabel!
    
    func setup(name: String, date: String, attendees: Int) {
        nameLabel.text = name
        dateLabel.text = date
        attendeesLabel.text = "number of attendees: \(attendees)"
    }
}
