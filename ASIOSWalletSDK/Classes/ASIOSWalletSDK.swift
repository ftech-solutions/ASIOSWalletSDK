import UIKit

public class ASIOSWalletSDK: NSObject {
    
    public static func initSDK(environment: ASWalletEnviornment = .prod, debug: Bool = false) {
        ASWallet.shared.isTesting = debug
        ASWallet.shared.sdkEnvironment = environment
    }
    
    public static func isWalletInstalled() -> Bool {
        return ASWallet.shared.getWalletStatus()
    }
    
}
