//
//  ViewController2.swift
//  SD-Fit
//
//  Created by Vladislava Sicicorez on 10/29/23.
//

import AVKit
import AVFoundation
import UIKit
import SwiftUI
import StoreKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func StartProgram(_ sender: Any) {
        
        @StateObject var storeVM = StoreVM()
                    if let subscriptionGroupStatus = storeVM.subscriptionGroupStatus {
                        print("Subscription Status", subscriptionGroupStatus)
                        if subscriptionGroupStatus == .expired || subscriptionGroupStatus == .revoked {
                           // performSegue(withIdentifier: "SubscriptionView", sender: nil)
                            
                            //display products
                        }
                    }
        
                    print(storeVM.purchasedSubscriptions.isEmpty )
                    if storeVM.purchasedSubscriptions.isEmpty {
                        performSegue(withIdentifier: "SubscriptionView", sender: nil)
                        
                    } else {
                        performSegue(withIdentifier: "KickboxingVideos", sender: nil)
                    }
                }
    
}
