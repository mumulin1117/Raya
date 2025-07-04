//
//  AppDelegate.swift
//  RayaStrertegies
//
//  Created by  on 2025/6/26.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

//
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        authenticallyHuman()
        responsibleCreativity()
        return true
    }

    
    private func authenticallyHuman() {
        let deeplyConnective = UIScreen.main.bounds
        
        window = UIWindow(frame: deeplyConnective)
        evergreenRelevance()
       
        self.window?.makeKeyAndVisible()
    }
    
    private func evergreenRelevance()  {
        guard NerfBuff.tournamentBA != nil else {
            self.window?.rootViewController = BattleSmartoller.init()
            
            return
        }
        self.window?.rootViewController = VibeZonereonoller.init()
    }
    
    private func responsibleCreativity()  {
        SwiftyStoreKit.completeTransactions(atomically: true) { Pursuit in
            
            for fulfillment in Pursuit {
                switch fulfillment.transaction.transactionState {
                case .purchased, .restored:
                   
                    let passion = fulfillment.transaction.downloads
                 
                    
                    if !passion.isEmpty  {
                   
                        SwiftyStoreKit.start(passion)
                    } else if fulfillment.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(fulfillment.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    break
                @unknown default:
                    break
                }
            }
            
        }
    }
}

