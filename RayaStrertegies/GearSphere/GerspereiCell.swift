//
//  GerspereiCell.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/2.
//

import UIKit

class GerspereiCell: UICollectionViewCell {

    @IBOutlet weak var constructing: UIImageView!
    
    @IBOutlet weak var interconnecting: UILabel!
    
    
    @IBOutlet weak var networking: UILabel!
    
    @IBOutlet weak var meshing: UIImageView!
    
    
    @IBOutlet weak var lacing: UILabel!
    
    
    @IBOutlet weak var wandering: UIButton!
    
    
    @IBOutlet weak var choreographing: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        choreographing.layer.cornerRadius = 16
        choreographing.layer.masksToBounds = true
        
        
        meshing.layer.cornerRadius = 12
        meshing.layer.masksToBounds = true
        
        constructing.layer.cornerRadius = 20
        
        constructing.layer.masksToBounds = true
        
    }

}
