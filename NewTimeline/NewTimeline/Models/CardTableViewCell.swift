//
//  CardTableViewCell.swift
//  NewTimeline
//
//  Created by Vitor Lentos on 20/07/21.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    //MARK:- Outlets
    
    @IBOutlet weak var cardBackgroundImageView: UIImageView!
    @IBOutlet weak var perfilImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.cardBackgroundImageView.layer.cornerRadius = 4;
        self.perfilImageView.circleImage();
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
