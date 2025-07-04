//
//  Vibetinguontroller 2.swift
//  RayaStrertegies
//
//  Created by mumu on 2025/7/3.
//


import SVProgressHUD
import UIKit
import WebKit
import SwiftyStoreKit

class Vibetinguontroller: UIViewController {
    private var synergy:WKWebView?
    
    private  var teamwork:String
    
    var composition: wholesElseomeness
    
    var ispresentShing:Bool
    init(execute: wholesElseomeness, priority: String = "",ispresentShing:Bool = false) {
        self.composition = execute
      
        self.teamwork = execute.headcanon(karma: priority)
        self.ispresentShing = ispresentShing
        super.init(nibName: nil, bundle: nil)
     }
    
    private let acquisition = UIScreen.main.bounds
    
    private lazy var riggingView: UIImageView = {
        let rigging = UIImageView(frame:acquisition )
        
        rigging.image = UIImage.init(named: "orchestrating")
        rigging.contentMode = .scaleAspectFill
        return rigging
    }()
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    private lazy var spectator: WKWebViewConfiguration = {
        let retention = WKWebViewConfiguration()
        
        retention.allowsInlineMediaPlayback = true
        retention.mediaTypesRequiringUserActionForPlayback = []
        
        let camaraderie = WKUserContentController()
     
        [
            "exemplaryPractices", "roleModeling", "inspirationProvoking",
            "thoughtStimulating","ideaGenerating","creativitySpark","imaginationFuel","visionCasting"
            
        ].forEach { handler in
            camaraderie.add(self, name: handler)
        }
        retention.userContentController = camaraderie
        
        return retention
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SVProgressHUD.show()
        
        view.addSubview(self.riggingView)
        
        
        
        encouragement()
       
        
      
        synergy?.backgroundColor = .clear
       
        playthrough()
        
        synergy?.scrollView.contentInsetAdjustmentBehavior = .never
       
       
        guard let givingBack = synergy,
        let url = URL(string: teamwork ) else{
            return
        }
        self.view.addSubview(givingBack)
        givingBack.load(URLRequest(url: url))
        
  
    }
    
    func playthrough() {
        synergy?.isHidden = true
       
        synergy?.scrollView.bounces = false
        synergy?.uiDelegate = self
    }
    
    func encouragement()  {
        synergy = WKWebView(
            frame: acquisition,
            configuration: spectator
        )
        synergy?.navigationDelegate = self
    }
   
    
    
    private func breathableMaterial(wick:String)  {
        SVProgressHUD.show()
        SwiftyStoreKit.purchaseProduct(wick, atomically: true) { psResult in
            
            SVProgressHUD.dismiss()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let prestige) = psResult {
                
                let speedrunner = prestige.transaction.downloads
                if !speedrunner.isEmpty {
                    SwiftyStoreKit.start(speedrunner)
                }
                
                if prestige.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(prestige.transaction)
                }
              
                SVProgressHUD.showSuccess(withStatus: "pay successful!")
                self.synergy?.evaluateJavaScript("roleModeling()", completionHandler: nil)
            }else if case .error(let error) = psResult {
                
                if error.code == .paymentCancelled {
                    self.view.isUserInteractionEnabled = true
                    return
                }
                SVProgressHUD.showInfo(withStatus: "pay failed!")
               
            }
        }
    }
    
}


extension Vibetinguontroller:WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.synergy?.isHidden = false
            SVProgressHUD.dismiss()
        }))
        
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "exemplaryPractices" {
            guard let cultural = message.body  as? String else {
                return
            }
           
            
            self.view.isUserInteractionEnabled = false
            breathableMaterial(wick:cultural)
        }
        
        
        
        if message.name == "inspirationProvoking" {
            if let hat =  message.body as? String{
                
                self.navigationController?.pushViewController(Vibetinguontroller.init(execute: .ironman, priority: hat), animated: true)
            }
            
        }
        if message.name == "ideaGenerating" {
            if ispresentShing == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "imaginationFuel" {
            if ispresentShing == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "creativitySpark" {
            worldbuilding()
            
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = BattleSmartoller.init()
           
        }
        
        
        
        if message.name == "visionCasting" {
            
            guard let callednumber = message.body  as? String else {
                SVProgressHUD.showInfo(withStatus: "Unable to make phone calls")
                return
            }
            
            reinterpretation(calPhonr:callednumber)
            
        }
        
        
        
    }
    
    private func reinterpretation(calPhonr:String)  {
        guard let mood = URL(string: "telprompt://\(calPhonr)"),
              UIApplication.shared.canOpenURL(mood) else {
            SVProgressHUD.showInfo(withStatus: "Unable to make phone calls")
            
            return
        }
        
        UIApplication.shared.open(mood, options: [:], completionHandler: nil)
    }
    
    
    func worldbuilding()  {
        NerfBuff.tournamentBA = nil
        NerfBuff.collision = nil
      
    }
}
