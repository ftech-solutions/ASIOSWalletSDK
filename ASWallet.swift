//
//  ASWallet.swift
//  ASIOSWalletSDK
//
//  Created by Arslan Saeed on 19/02/2022.
//

import Foundation
import PassKit

class ASWallet {
    
    static let shared = ASWallet()
    
    var isTesting: Bool = false
    var sdkEnvironment: ASWalletEnviornment = .beta
    
    func getWalletStatus() -> Bool {
        if #available(iOS 10.0, *) {
            return PKPaymentAuthorizationController.canMakePayments()
        } else {
            return false
        }
    }
    
}
