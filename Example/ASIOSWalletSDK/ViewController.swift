//
//  ViewController.swift
//  ASIOSWalletSDK
//
//  Created by ftech-solutions on 02/19/2022.
//  Copyright (c) 2022 ftech-solutions. All rights reserved.
//

import UIKit
import ASIOSWalletSDK

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ASIOSWalletSDK.initSDK(environment: .beta, debug: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

