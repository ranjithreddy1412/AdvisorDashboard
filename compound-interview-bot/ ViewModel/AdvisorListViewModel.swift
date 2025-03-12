//
//  AdvisorListViewModel.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/11/25.
//

import SwiftUI

class AdvisorListViewModel: ObservableObject {
    @Published var advisors: [Advisor] = []
    @Published var sortOption: SortOption = .name

    enum SortOption {
        case name, totalAssets
    }

    init() {
        loadAdvisors()
    }

    private func loadAdvisors() {
        if let loadedAdvisors: [Advisor] = DataManager.load("advisors", as: [Advisor].self) {
            DispatchQueue.main.async {
                self.advisors = loadedAdvisors
            }
        }
    }

    var sortedAdvisors: [Advisor] {
        switch sortOption {
        case .name:
            return advisors.sorted { $0.name < $1.name }
        case .totalAssets:
            return advisors.sorted { $0.totalAssets > $1.totalAssets }
        }
    }
}
