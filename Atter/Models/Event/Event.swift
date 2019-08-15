//
//  Event.swift
//  Atter
//
//  Created by Patryk Mieszała on 15/08/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import Foundation

struct Event: Equatable {
    let
    id: String,
    name: String,
    date: Date,
    attendees: [Person]
}

func == (lhs: Event, rhs: Event) -> Bool {
    return lhs.id == rhs.id
}
