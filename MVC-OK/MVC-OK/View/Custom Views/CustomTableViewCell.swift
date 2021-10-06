//
//  CustomTableViewCell.swift
//  MVC-OK
//
//  Created by Vitor Lentos on 27/07/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(value:Carro) {
        self.textLabel?.text = value.modelo;
    }
    
}
