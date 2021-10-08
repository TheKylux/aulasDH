//
//  TodoItemTableViewCell.swift
//  BucketList
//
//  Created by Vitor Lentos on 07/10/21.
//

import UIKit

class TodoItemTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func update(with item: Item){
        titleLabel.text = item.title
        accessoryType = item.done ? .checkmark : .none
    }
    
}
