//
//  Model.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/11/25.
//

import SwiftUI

struct Advisor: Identifiable, Codable {
    let id: String
    let name: String
    let custodians: [Custodian]
    let accounts: [Account]
    
    var totalAssets: Double {
        accounts.reduce(0) { $0 + $1.totalValue }
    }
}

struct Custodian: Codable {
    let name: String
    let repId: String
}

struct Account: Codable, Identifiable {
    let id: UUID = UUID()
    let name: String
    let number: String
    let repId: String
    let holdings: [Holding]
    let custodian: String

    var totalValue: Double {
        holdings.reduce(0) { $0 + ($1.unitPrice * Double($1.units)) }
    }
}


struct Holding: Codable {
    let ticker: String
    let units: Int
    let unitPrice: Double
}

struct Security: Identifiable, Codable {
    let id: String
    let ticker: String
    let name: String
    let dateAdded: String
}
