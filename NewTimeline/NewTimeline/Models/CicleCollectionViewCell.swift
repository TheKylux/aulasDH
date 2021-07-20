//
//  CicleCollectionViewCell.swift
//  NewTimeline
//
//  Created by Vitor Lentos on 19/07/21.
//

import UIKit

class CicleCollectionViewCell: UICollectionViewCell {
    
    //MARK:- Outlets
    @IBOutlet weak var cicleImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.cicleImageView.circleImage();
        
        
        
    }
    
    func setup(value:Animal) {
        self.cicleImageView.image = UIImage(named: value.imageName);
    }

}
