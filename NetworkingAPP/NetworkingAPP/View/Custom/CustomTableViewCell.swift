//
//  CustomTableViewCell.swift
//  NetworkingAPP
//
//  Created by Vitor Lentos on 26/08/21.
//

import UIKit
import AlamofireImage

class CustomTableViewCell: UITableViewCell {
    
    //MARK:- Outlets
    @IBOutlet weak var memeName: UILabel!
    @IBOutlet weak var memeId: UILabel!
    @IBOutlet weak var memeImage: UIImageView!
    
    //MARK:- Variáveis

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp (meme:Meme) {
        guard let imageURL = URL(string: meme.url) else { return }
        self.memeName.text = meme.name;
        self.memeId.text = meme.id;
        self.memeImage.af.setImage(withURL: imageURL);
    }
    
}
