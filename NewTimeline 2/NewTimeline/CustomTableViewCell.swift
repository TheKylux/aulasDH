//
//  CustomTableViewCell.swift
//  NewTimeline
//
//  Created by Felipe Miranda on 13/07/21.
//

import UIKit


struct Veiculo {
    
    
}

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var customViewBackground: UIView!
    @IBOutlet weak var perfilImageView: UIImageView!
    @IBOutlet weak var cardBackgroundImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.cardBackgroundImageView.layer.cornerRadius = 4
        self.perfilImageView.circleImage()
        
        self.customViewBackground.layer.cornerRadius = 4
        self.customViewBackground.layer.borderColor = UIColor.gray.cgColor
        self.customViewBackground.layer.borderWidth = 2.5
        self.customViewBackground.clipsToBounds = true

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    
    func setup(value: Animal) {
        
        self.cardBackgroundImageView.image = UIImage(named: value.imageNameBackground)
        self.perfilImageView.image = UIImage(named: value.imageName)
        
    }
    
}
