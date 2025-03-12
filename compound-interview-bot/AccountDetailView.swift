//
//  AccountDetailView.swift
//  compound-interview-bot
//
//  Created by ranjith kumar reddy b perkampally on 3/11/25.
//

import SwiftUI

struct AccountDetailView: View {
    let account: Account

    var body: some View {
        List(account.holdings, id: \.ticker) { holding in
            VStack(alignment: .leading) {
                Text(holding.ticker).font(.headline)
                Text("Units: \(holding.units) • Price: $\(holding.unitPrice, specifier: "%.2f")")
                    .font(.subheadline)
                Text("Total Value: $\(Double(holding.units) * holding.unitPrice, specifier: "%.2f")")
                    .font(.subheadline)
            }
        }
        .navigationTitle(account.name)
    }
}

