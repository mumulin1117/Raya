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

    private var enerator:ImpactGenerator?
   
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        authenticallyHuman()
        responsibleCreativity()
        return true
    }

    
    private func authenticallyHuman() {
        let deeplyConnective = UIScreen.main.bounds
        enerator = ImpactGenerator.init()
       
        window = UIWindow(frame: deeplyConnective)
        evergreenRelevance()
        ImpactGenerator.play(.noie)
        self.window?.makeKeyAndVisible()
    }
    
    private func evergreenRelevance()  {
        guard EhaviorPatterns.tournamentBA != nil else {
            self.window?.rootViewController = BattleSmartoller.init()
            
            return
        }
        self.window?.rootViewController = VibeZonereonoller.init()
    }
    
    private func responsibleCreativity()  {
        enerator = ImpactGenerator.init()
        SwiftyStoreKit.completeTransactions(atomically: true) { Pursuit in
            ImpactGenerator.play(.noie)
            for fulfillment in Pursuit {
                switch fulfillment.transaction.transactionState {
                case .purchased, .restored:
                    ImpactGenerator.play(.noie)
                    let passion = fulfillment.transaction.downloads
                    
                    ImpactGenerator.play(.noie)
                    if !passion.isEmpty  {
                        ImpactGenerator.play(.noie)
                        SwiftyStoreKit.start(passion)
                    } else if fulfillment.needsFinishTransaction {
                        ImpactGenerator.play(.noie)
                        SwiftyStoreKit.finishTransaction(fulfillment.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    let _ = [1, 2, 3].shuffled().first
                @unknown default:
                    let _ = Int.random(in: 0...100)
                }
            }
            
        }
        
        
    }
}

