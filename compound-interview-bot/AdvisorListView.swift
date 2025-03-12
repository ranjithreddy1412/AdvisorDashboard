//
//  ContentView.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/11/25.
//

import SwiftUI


struct AdvisorListView: View {
    @StateObject private var viewModel = AdvisorListViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Picker("Sort By", selection: $viewModel.sortOption) {
                    Text("Name").tag(AdvisorListViewModel.SortOption.name)
                    Text("Total Assets").tag(AdvisorListViewModel.SortOption.totalAssets)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                List(viewModel.sortedAdvisors) { advisor in
                    NavigationLink(destination: AdvisorDetailView(viewModel: AdvisorDetailViewModel(advisor: advisor))) {
                        VStack(alignment: .leading) {
                            Text(advisor.name).font(.headline)
                            Text("Total Assets: $\(advisor.totalAssets, specifier: "%.2f")").font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Advisors")
        }
    }
}


#Preview {
    AdvisorListView()
}
