//
//  DetailViewController.swift
//  Wallet
//
//  Created by Vitor Lentos on 01/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK:- Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var creditCardNumberLabel: UILabel!
    @IBOutlet weak var expirationLabel: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var flagImageView: UIImageView!
    
    
    
    
    var selectedCard:Cards?;

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = selectedCard?.name;
        //self.creditCardNumberLabel.text = String(selectedCard?.creditCardNumber ?? 0);
        
        let num0 = String(selectedCard?.creditCardNumber ?? 0);
        let num1 = num0.prefix(4);
        var num2 = num0.suffix(12);
        num2 = num2.prefix(4);
        self.creditCardNumberLabel.text = "\(num1) \(num2) **** ****";
        
        self.expirationLabel.text = selectedCard?.expirationDate;
        
        if selectedCard?.flag == .mastercard {
            self.cardImageView.image = UIImage(named: "fundo-master");
            self.flagImageView.image = UIImage(named: "mastercard");
        } else if selectedCard?.flag == .visa {
            self.cardImageView.image = UIImage(named: "fundo-visa");
            self.flagImageView.image = UIImage(named: "visa");
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
