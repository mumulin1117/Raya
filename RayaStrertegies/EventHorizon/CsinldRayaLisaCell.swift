//
//  CsinldRayaLisaCell.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/2.
//

import UIKit

class CsinldRayaLisaCell: UICollectionViewCell {

    @IBOutlet weak var choreographing: UILabel!
    
    @IBOutlet weak var managing: UIButton!
    
    
    @IBOutlet weak var administering: UIImageView!
    
    
    @IBOutlet weak var overseeing: UIImageView!
    
    
    @IBOutlet weak var supervising: UILabel!
    
    @IBOutlet weak var observing: UIButton!
    
    @IBOutlet weak var monitoring: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        ethicalStandards()
        designSystem()
    }
    
    private func ethicalStandards()  {
        choreographing.layer.cornerRadius = 10
        
        managing.layer.cornerRadius = 10
        administering.layer.cornerRadius = 15
        overseeing.layer.cornerRadius = 17
    }
    
    private func designSystem()  {
        choreographing.layer.masksToBounds = true
        managing.layer.masksToBounds = true
        administering.layer.masksToBounds = true
        overseeing.layer.masksToBounds = true
    }

}
