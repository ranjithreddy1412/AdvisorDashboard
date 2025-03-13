//
//  AdvisorDetailViewModelTests.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/12/25.
//

import XCTest
@testable import compound_interview_bot

class AdvisorDetailViewModelTests: XCTestCase {
    func testLoadingAccounts() {
        let advisor = Advisor(id: "1", name: "Randall", custodians: [], accounts: [
            Account(name: "Test Account", number: "1234", repId: "5678", holdings: [], custodian: "Test Custodian")
        ])
        let viewModel = AdvisorDetailViewModel(advisor: advisor)
        XCTAssertEqual(viewModel.accounts.count, 1)
        XCTAssertEqual(viewModel.accounts.first?.name, "Test Account")
    }
}


