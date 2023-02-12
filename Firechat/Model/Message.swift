//
//  Message.swift
//  Firechat
//
//  Created by Giorgi Meqvabishvili on 10.02.23.
//

import Foundation


struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
    
}
