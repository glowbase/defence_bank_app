//
//  PreviewData.swift
//  DefenceBank
//
//  Created by Cooper on 15/1/2023.
//

import Foundation

var accountPreviewData = Account(
    AccountNumber: "20392984",
    Description: "Everyday",
    CurrentBalance: 394.64,
    AvailableBalance: 375.25,
    ClassDescription: "Everyday Access"
)

var transactionPreviewData = Transaction(
    AccountNumber: "20392984",
    CreateDate: "",
    DebitAmount: 103.64,
    Balance: 402.6,
    Description: "Place holder transaction",
    LongDescription: "",
    TransactionCodeDescription: "",
    ImmutableTransactionId: 903894508392,
    CanLookupMerchant: false,
    MerchantLogo: "",
    MerchantName: "",
    CategoryList: [
        "Food/Drink"
    ]
)

var transactionsPreviewData = [Transaction](repeating: transactionPreviewData, count: 5)
var accountsPreviewData = [Account](repeating: accountPreviewData, count: 3)
