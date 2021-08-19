//
//  AdicionarProdutoListaDeComprasView.swift
//  ShopList
//
//  Created by Vitor Lentos on 11/08/21.
//

import UIKit

class AdicionarProdutoListaDeComprasView: UIViewController {
    
    //MARK:- variáveis
    let controller:ProdutoController = ProdutoController();
    var produtoSelecionado:Product?
    
    //MARK:- Outlets
    @IBOutlet weak var produtoTableView: UITableView!
    @IBOutlet weak var salvarButton: UIButton!
    @IBOutlet weak var cancelarButton: UIButton!
    @IBOutlet weak var quantidadeText: UITextField!
    @IBOutlet weak var viewBasic: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.produtoTableView.delegate = self;
        self.produtoTableView.dataSource = self;
        self.produtoTableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell");
        
        self.quantidadeText.delegate = self;
        
        self.cancelarButton.roundCorners(cornerRadius: 15.0, typeCorners: [.inferiorDireito, .inferiorEsquerdo, .superiorDireito, .superiorEsquerdo]);
        self.salvarButton.roundCorners(cornerRadius: 15.0, typeCorners: [.inferiorDireito, .inferiorEsquerdo, .superiorDireito, .superiorEsquerdo]);
        self.viewBasic.roundCorners(cornerRadius: 15.0, typeCorners: [.inferiorDireito, .inferiorEsquerdo, .superiorDireito, .superiorEsquerdo]);

        // Do any additional setup after loading the view.
    }
    
    //MARK:- Actions
    @IBAction func salvar(_ sender: UIButton) {
        
        if let _prod=self.produtoSelecionado {
            if let _quant=self.quantidadeText.text {
                controller.addLista(produto: _prod, quantidade: _quant);
                dismiss(animated: true, completion: nil);
            }
        }
            
    }
    
    @IBAction func cancelar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil);
    }
    
    

}

extension AdicionarProdutoListaDeComprasView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ProductTableViewCell? = produtoTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell;
        cell?.setUp(produto: controller.loadCurrentProduct(indexPath: indexPath));
        
        return cell ?? ProductTableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.produtoSelecionado = controller.loadCurrentProduct(indexPath: indexPath);
    }
    
    
}

extension AdicionarProdutoListaDeComprasView : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        quantidadeText.resignFirstResponder();
        return true
    }
    
}
