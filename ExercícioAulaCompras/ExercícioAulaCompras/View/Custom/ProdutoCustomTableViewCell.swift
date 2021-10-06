//
//  ProdutoCustomTableViewCell.swift
//  ExercícioAulaCompras
//
//  Created by Vitor Lentos on 17/08/21.
//

import UIKit

class ProdutoCustomTableViewCell: UITableViewCell {
    
    //MARK:- Outlets
    @IBOutlet weak var perfilImageView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUP(produto:Produto) {
        
        nomeLabel.text = produto.nome;
        if produto.fotoPerfil == nil {
            perfilImageView.image = UIImage(named: produto.perfil ?? "");
        } else {
            perfilImageView.image = produto.fotoPerfil;
        }
        
        
    }
    
}
