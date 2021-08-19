//
//  ProdutoController.swift
//  ExercícioAulaCompras
//
//  Created by Vitor Lentos on 17/08/21.
//

import Foundation
import UIKit

//MARK:- Variáveis globais
private var produtoArray:[Produto] = [Produto(nome: "Todynho", perfil: "brand-identity")];

//MARK:- Protocolo
protocol ProdutoControllerProtocol: AnyObject {
    func atualizarTabela()
    func cam()
    func lib()
}

//MARK:- Class
class ProdutoController {
    
    //MARK:- Variáveis internas
    weak var delegate: ProdutoControllerProtocol?
    var usrTxtField : UITextField?
    var indexPathSecreto:IndexPath?
    
    //MARK: Retornar a quantidade de itens do array
    var count:Int {
        return produtoArray.count
    }
    
    //MARK: Adiciona produto dentro do array e atualiza a tabela no ViewController
    func addProduto() -> UIAlertController {
        let alert = UIAlertController(title: "Adicionar novo produto", message: "Digite o nome do produto que deseja adicionar", preferredStyle: .alert)
        alert.addTextField(configurationHandler: usrTxtField);
        alert.addAction(UIAlertAction(title: "Adicionar", style: .default, handler: self.okHandler));
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil));
        
        return alert
    }
    
    func usrTxtField(textField: UITextField!) {
        usrTxtField = textField
        usrTxtField?.placeholder = "teste";
    }
    
    func okHandler(alert: UIAlertAction){
        if let _txt = usrTxtField?.text {
            produtoArray.append(Produto(nome: _txt, perfil: "brand-identity"));
        }
        self.delegate?.atualizarTabela();
    }
    
    //MARK: Retorna o produto por meio de um indexPath
    func loadCurrentProduto(indexPath: IndexPath) -> Produto {
        return produtoArray[indexPath.row]
    }
    
    //MARK: Editando foto do produto
    func editPicProduto(indexPath:IndexPath) -> UIAlertController {
        let alert = UIAlertController(title: "Modificar produto", message: "\(String(describing: loadCurrentProduto(indexPath: indexPath).nome))", preferredStyle: .actionSheet);
        
        //CameraButton
        alert.addAction(UIAlertAction(title: "Tirar foto", style: .default, handler: { pic in
            print("cam");
            self.indexPathSecreto = indexPath;
        }));
        
        //LibraryButton
        alert.addAction(UIAlertAction(title: "Escolher da biblioteca", style: .default, handler: { lib in
            print("lib");
            self.indexPathSecreto = indexPath;
        }));
        
        //CancelButton
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil));
        //DeleteButton
        
        alert.addAction(UIAlertAction(title: "Remove", style: .destructive, handler: { del in
            print("del");
            produtoArray.remove(at: indexPath.row);
        }))
        
        return alert;
    }

}
