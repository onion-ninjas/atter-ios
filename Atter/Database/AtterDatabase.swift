//
//  AtterDatabase.swift
//  Atter
//
//  Created by Patryk Mieszała on 15/08/2019.
//  Copyright © 2019 Patryk Mieszała. All rights reserved.
//

import Foundation

//just dummy static implementation for now
class AtterDatabase {
    private static var events: [Event] = (1..<100).map {
        Event(
            id: "\($0)",
            name: "Event \($0)",
            date: Date(),
            attendees: []
        )
    }
    
    func getEvents() -> [Event] {
        return AtterDatabase.events
    }
    
    func save(event: Event) {
        if let index = AtterDatabase.events.firstIndex(of: event) {
            AtterDatabase.events[index] = event
        } else {
            AtterDatabase.events.append(event)
        }
    }
    
    //TODO: other methods
}
