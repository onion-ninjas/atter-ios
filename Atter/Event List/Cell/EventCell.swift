//
//  EventCell.swift
//  Atter
//
//  Created by Patryk Mieszała on 19/07/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import UIKit
import atter_logic

class EventCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var attendeesLabel: UILabel!
    
    func setup(with event: Event) {
        nameLabel.text = event.name
        dateLabel.text = event.eventDate
        attendeesLabel.text = "number of attendees: \(event.attendeesCount)"
    }
}
