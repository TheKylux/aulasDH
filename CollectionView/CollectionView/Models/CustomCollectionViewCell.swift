//
//  CustomCollectionViewCell.swift
//  CollectionView
//
//  Created by Vitor Lentos on 06/07/21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.purple.cgColor
        self.layer.borderWidth = 1.5
        
        
        
        
        // Initialization code
    }

}


