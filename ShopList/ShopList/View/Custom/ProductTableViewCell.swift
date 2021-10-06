//
//  ProductTableViewCell.swift
//  ShopList
//
//  Created by Vitor Lentos on 10/08/21.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    //MARK:- Variáveis
    
    //MARK:- outlets
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var marcaLabel: UILabel!
    @IBOutlet weak var quantidadeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK:- Functions
    func setUp(produto:Product){
        
        self.nomeLabel.text = produto.nome;
        self.marcaLabel.text = produto.marca;
        self.quantidadeLabel.text = "\(produto.quantidade)";
        
        
    }
    
}
