//
//  CardsTableViewCell.swift
//  Wallet
//
//  Created by Vitor Lentos on 01/07/21.
//

import UIKit

class CardsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var expirationLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var companyImageView: UIImageView!
    
    
    private var card: Cards?;

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp (value:Cards) {
        
        self.card = value;
        self.nameLabel.text = value.name;
        let num0 = String(value.creditCardNumber ?? 0);
        let num1 = num0.prefix(4);
        var num2 = num0.suffix(12);
        num2 = num2.prefix(4);
        self.numberLabel.text = "\(num1) \(num2) **** ****";
        self.expirationLabel.text = value.expirationDate
        
        if value.flag == .mastercard {
            self.companyImageView.image = UIImage(named: "mastercard");
            self.flagImageView.image = UIImage(named: "fundo-master");
        } else if value.flag == .visa {
            self.companyImageView.image = UIImage(named: "visa");
            self.flagImageView.image = UIImage(named: "fundo-visa");
        }
        
    }
    
}
