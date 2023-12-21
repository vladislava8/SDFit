//
//  ViewController3.swift
//  SD-Fit
//
//  Created by Vladislava Sicicorez on 12/17/23.
//

import UIKit
import StoreKit


class ViewController3: UIViewController {
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        var isAuthorizedForPayments: Bool {
            return SKPaymentQueue.canMakePayments()
        }
    

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func Subscribe(_ sender: Any) {
        
        buyMonthlySubscription();
    }
    
    func buyMonthlySubscription() {
            if SKPaymentQueue.canMakePayments() {
                //Can make payments
                
               let paymentRequest = SKMutablePayment()
                paymentRequest.productIdentifier = "subscription.monthly"
                SKPaymentQueue.default().add(paymentRequest)
                
                
            } else {
                //Can't make payments
                print("User can't make payments")
            }
        }
        
        func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
            
            for transaction in transactions {
                if transaction.transactionState == .purchased {
                    
                    //User payment successful
                    print("Transaction successful!")
                    
                    SKPaymentQueue.default().finishTransaction(transaction)
                    performSegue(withIdentifier: "KickboxingVideos", sender: nil)
                    
                } else if transaction.transactionState == .failed {
                    
                    //Payment failed

                    if let error = transaction.error {
                        let errorDescription = error.localizedDescription
                        print("Transaction failed due to error: \(errorDescription)")
                    }
                    
                     SKPaymentQueue.default().finishTransaction(transaction)
                    
                } else if transaction.transactionState == .restored {
                    
                    print("Transaction restored")
                    
                    navigationItem.setRightBarButton(nil, animated: true)
                    
                    SKPaymentQueue.default().finishTransaction(transaction)
                    
                    performSegue(withIdentifier: "KickboxingVideos", sender: nil)
                }
            }
            
        }
        
        func isPurchased() -> Bool {
            let purchaseStatus = UserDefaults.standard.bool(forKey: "subscription.monthly")
            
            if purchaseStatus {
                print("Previously purchased")
                return true
            } else {
                print("Never purchased")
                return false
            }
        }
        

    @IBAction func Restore(_ sender: Any) {
        SKPaymentQueue.default().restoreCompletedTransactions()
    }
    
   

}
