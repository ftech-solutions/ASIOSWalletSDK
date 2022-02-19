import UIKit
import PassKit

public class ASIOSWalletSDK: NSObject {
    
    static var isTesting: Bool = false
    static var sdkEnvironment: ASWalletEnviornment = .beta
    
    public static func initSDK(environment: ASWalletEnviornment = .prod, debug: Bool = false) {
        self.isTesting = debug
        self.sdkEnvironment = environment
    }
    
    public static func isWalletInstalled() -> Bool {
        return deviceHasAppleWallet()
    }
    
}

func deviceHasAppleWallet() -> Bool {
    if #available(iOS 10.0, *) {
        return PKPaymentAuthorizationController.canMakePayments()
    } else {
        return false
    }
}

public enum ASWalletEnviornment {
    case beta
    case preProd
    case prod
}

