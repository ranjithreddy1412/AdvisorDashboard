//
//  AdvisorDetailView.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/11/25.
//

import SwiftUI

struct AdvisorDetailView: View {
    @StateObject var viewModel: AdvisorDetailViewModel

    var body: some View {
        List(viewModel.accounts) { account in
            NavigationLink(destination: AccountDetailView(account: account)) {
                VStack(alignment: .leading) {
                    Text(account.name).font(.headline)
                    Text("Total Value: $\(account.totalValue, specifier: "%.2f")").font(.subheadline)
                }
            }
        }
        .navigationTitle(viewModel.advisor.name)
    }
}



