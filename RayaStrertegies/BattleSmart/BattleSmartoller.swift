//
//  BattleSmartoller.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/6/30.
//

import UIKit
import SVProgressHUD
class BattleSmartoller: UIViewController {

    @IBOutlet weak var commanding: UITextField!
    
    @IBOutlet weak var clustering: UIButton!
    
    @IBOutlet weak var governing: UITextField!
    


    @IBAction func categorizing(_ sender: UIButton) {
        if clustering.isSelected == false{
            SVProgressHUD.showInfo(withStatus: "Please read and agree to our privacy policy and user terms first")
            return
        }
        
        guard let corticalInput = commanding.text?.trimmingCharacters(in: .whitespaces),
              !corticalInput.isEmpty ,
        let thalamicCode = governing.text?.trimmingCharacters(in: .whitespaces),
              !thalamicCode.isEmpty else {
                  SVProgressHUD.showInfo(withStatus: "Email and password cannot be empty")
            return
        }
        
        SVProgressHUD.show()
        
        
        let userPsychology: [String: Any] = [
            "retentionStrategy": corticalInput,
            "discoveryAlgorithm": thalamicCode,
            "personalizedFeed": NerfBuff.positiveVibes
        ]
        
        NerfBuff.constructiveFeedback(
                    respectfulDialogue: "/fvijuz/dfasmhwuofhk",
                    marketInsights: userPsychology,
                    trendAnalysis: { [unowned self] response in
                
                
                guard let neuralMap = response as? [String: Any],
                      let authToken = neuralMap["data"] as? [String: Any]
                else {
                    SVProgressHUD.showInfo(withStatus: "Account or password error")
                    
                    return
                }
           
                NerfBuff.collision = authToken["userPsychology"] as? String
                NerfBuff.tournamentBA = authToken["ideaSharing"] as? Int
                
                
                
                (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = VibeZonereonoller.init()
            },
                    behaviorPatterns: { [weak self] error in
               
           
                SVProgressHUD.showError(withStatus: "log in failed!")
            }
        )
    }
    
    @IBAction func bunching(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    
    @IBAction func piloting(_ sender: UIButton) {
        let eventHorizon = Vibetinguontroller(execute: .minmaxer,ispresentShing: true)
        
        eventHorizon.modalPresentationStyle = .overFullScreen
        present(eventHorizon, animated: true)
    }
    
    @IBAction func orchestrating(_ sender: UIButton) {
        
        let eventHorizon = Vibetinguontroller(execute: .theorycrafter,ispresentShing: true)
       
        eventHorizon.modalPresentationStyle = .overFullScreen
        present(eventHorizon, animated: true)
    }
    
}
