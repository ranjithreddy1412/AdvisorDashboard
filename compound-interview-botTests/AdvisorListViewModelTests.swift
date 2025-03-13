//
//  AdvisorListViewModelTests.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/12/25.
//

import XCTest
@testable import compound_interview_bot

class AdvisorListViewModelTests: XCTestCase {
    func testSortingByName() {
        let viewModel = AdvisorListViewModel()
        viewModel.advisors = [
            Advisor(id: "2", name: "Sophia", custodians: [], accounts: []),
            Advisor(id: "1", name: "Randall", custodians: [], accounts: [])
        ]
        viewModel.sortOption = .name
        XCTAssertEqual(viewModel.sortedAdvisors.first?.name, "Randall")
    }
    
    func testSortingByTotalAssets() {
        let viewModel = AdvisorListViewModel()
        viewModel.advisors = [
            Advisor(id: "2", name: "Sophia", custodians: [], accounts: [
                Account(name: "Test", number: "123", repId: "1", holdings: [Holding(ticker: "AAPL", units: 10, unitPrice: 150.0)], custodian: "Test")
            ]),
            Advisor(id: "1", name: "Randall", custodians: [], accounts: [
                Account(name: "Test", number: "123", repId: "1", holdings: [Holding(ticker: "AAPL", units: 20, unitPrice: 150.0)], custodian: "Test")
            ])
        ]
        viewModel.sortOption = .totalAssets
        XCTAssertEqual(viewModel.sortedAdvisors.first?.name, "Randall")
    }
}

