//
//  DataManagerTests.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/12/25.
//
import XCTest
@testable import compound_interview_bot

class DataManagerTests: XCTestCase {
    func testLoadValidJSON() {
        let advisors: [Advisor]? = DataManager.load("advisors", as: [Advisor].self)
        XCTAssertNotNil(advisors, "Failed to load advisors.json")
        XCTAssertFalse(advisors!.isEmpty, "Advisors list should not be empty")
    }
}
