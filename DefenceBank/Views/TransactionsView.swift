//
//  TransactionView.swift
//  DefenceBank
//
//  Created by Cooper on 18/1/2023.
//

import SwiftUI

struct TransactionsView: View {
    @StateObject var data = AppDataModel()
    
    let account: Account
    
    var body: some View {
        VStack() {
            Text("Testing")
            List() {
                ForEach(Array(data.transactions.enumerated() ?? transactionsPreviewData.enumerated()), id: \.element) { index, transaction in
                    Text(transaction.LongDescription ?? "No Description")
                }
            }
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            DispatchQueue.global(qos: .background).async {
                self.data.transactions = getTransactions(account_number: account.AccountNumber)
            }
        }
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static let data: AppDataModel = {
        let data = AppDataModel()
        
        data.accounts = accountsPreviewData
        
        return data
    }()
    
    static var previews: some View {
        TransactionsView(account: accountPreviewData)
            .environmentObject(data)
    }
}
