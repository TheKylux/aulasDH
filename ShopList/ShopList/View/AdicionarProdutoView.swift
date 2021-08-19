//
//  AdicionarProdutoView.swift
//  ShopList
//
//  Created by Vitor Lentos on 10/08/21.
//

import UIKit

class AdicionarProdutoView: UIViewController {
    
    //MARK:- variáveis
    let controller:ProdutoController = ProdutoController();
    
    //MARK:- outlets
    @IBOutlet weak var informacoesView: UIView!
    @IBOutlet weak var nomeLabel: UITextField!
    @IBOutlet weak var marcaLabel: UITextField!
    @IBOutlet weak var quantidadeLabel: UITextField!
    @IBOutlet weak var cancelarBtn: UIButton!
    @IBOutlet weak var salvarBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.informacoesView.roundCorners(cornerRadius: 15.0, typeCorners: [.inferiorDireito, .superiorDireito, .superiorEsquerdo, .inferiorEsquerdo]);
        
        self.cancelarBtn.roundCorners(cornerRadius: 15.0, typeCorners: [.inferiorDireito, .inferiorEsquerdo, .superiorDireito, .superiorEsquerdo]);
        self.salvarBtn.roundCorners(cornerRadius: 15.0, typeCorners: [.inferiorDireito, .inferiorEsquerdo, .superiorDireito, .superiorEsquerdo]);
        
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Actions
    @IBAction func salvar(_ sender: UIButton) {
        controller.addProduto(nome: nomeLabel.text, marca: marcaLabel.text, quantidade: quantidadeLabel.text);
        print(controller.count);
        dismiss(animated: true, completion: nil);
    }
    
    @IBAction func cancelar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil);
    }
    

}
