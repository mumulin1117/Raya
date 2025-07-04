//
//  CsinldFdsiCell.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/2.
//

import UIKit

class CsinldFdsiCell: UICollectionViewCell {

    @IBOutlet weak var accomplishing: UIImageView!
    
    
    @IBOutlet weak var bringing: UILabel!
    
    @IBOutlet weak var attaining: UILabel!
    
    @IBOutlet weak var transporting: UILabel!
    
    
    @IBOutlet weak var divulging: UIButton!
    
    
    @IBOutlet weak var investigating: UIImageView!
    
    
    @IBOutlet weak var formulating: UIButton!
    
    @IBOutlet weak var devising: UIButton!
    
    @IBOutlet weak var accumulating: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        divulging.isUserInteractionEnabled = false
        divulging.layer.cornerRadius = 16
        divulging.layer.masksToBounds = true
        
        accomplishing.layer.cornerRadius = 8
        accomplishing.layer.masksToBounds = true
    }

}
