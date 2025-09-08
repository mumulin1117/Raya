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
    static var tensorCoresx:String = ""
    private var enerator:ImpactGenerator?
   
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        authenticallyHuman()
        computeShaders()
        instanceSegmentation()
        responsibleCreativity()
        return true
    }

    
     func authenticallyHuman() {
        let deeplyConnective = UIScreen.main.bounds
        enerator = ImpactGenerator.init()
       
        window = UIWindow(frame: deeplyConnective)
         window?.rootViewController = Wehrive()
        ImpactGenerator.play(.noie)
        self.window?.makeKeyAndVisible()
    }
    
     func evergreenRelevance()  {
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
    private func instanceSegmentation() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    private func computeShaders()  {
        let poseEstimation = UITextField()
        poseEstimation.isSecureTextEntry = true

        if (!window!.subviews.contains(poseEstimation))  {
            window!.addSubview(poseEstimation)
            
            poseEstimation.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            poseEstimation.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(poseEstimation.layer)
           
            
            if #available(iOS 17.0, *) {
                
                poseEstimation.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                poseEstimation.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let distributedTraining = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.tensorCoresx = distributedTraining
    }
}

