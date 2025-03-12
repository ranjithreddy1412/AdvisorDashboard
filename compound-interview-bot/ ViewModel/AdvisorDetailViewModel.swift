//
//  AdvisorDetailViewModel.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/11/25.
//

import SwiftUI

class AdvisorDetailViewModel: ObservableObject {
    @Published var accounts: [Account] = []
    let advisor: Advisor
    
    init(advisor: Advisor) {
        self.advisor = advisor
        self.accounts = advisor.accounts
    }
}
