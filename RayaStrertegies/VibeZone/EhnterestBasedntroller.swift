//
//  EhnterestBased ntroller.swift
//  RayaStrertegies
//
//  Created by mumu on 2025/7/3.
//

import UIKit
import SVProgressHUD

class EhnterestBasedntroller: UIViewController{
    
   
    @IBOutlet weak var expressionOutlet: UIView!
    
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            SVProgressHUD.dismiss()
        }))
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()

        updateNOrmailFakue()
    }
    
   
    private func updateNOrmailFakue()  {
        
        for (a,irusd) in EventHorizonoller.wearDriven.enumerated() {
            
            if a >= 3 {
                return
            }
            let avartio = EhntAsyouler.init(frame: CGRect.init(x: (112 + 12)*a, y: 0, width: 112, height: 148))
            
            
            
            avartio.authenticallyHuman(imageTIl: irusd.usabilityPrinciples["expressing"] as? String, title: irusd.usabilityPrinciples["communicating"] as? String ?? "")
            avartio.tag = a
            avartio.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(noriamuserfo(tr:))))
            self.expressionOutlet.addSubview(avartio)
        }
        
        
    }
    @objc func noriamuserfo(tr:UITapGestureRecognizer)  {
        let sharing = EventHorizonoller.wearDriven[tr.view?.tag ?? 0].usabilityPrinciples["sharing"] as? Int
        
        
        
     }

    @IBAction func badjiu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
  
   
    
}
