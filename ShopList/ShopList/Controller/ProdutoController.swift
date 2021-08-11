//
//  ProdutoController.swift
//  ShopList
//
//  Created by Vitor Lentos on 10/08/21.
//

import Foundation

class ProdutoController {
    
    private var arrayProdutos:[Product] = [Product(nome: "Bolacha", marca: "Teste", quantidade: 1), Product(nome: "Bolacha2", marca: "Teste2", quantidade: 12)];
    
    var count:Int{
        return arrayProdutos.count;
    }
    
    //MARK: Função para adicionar produtos
    func addProduto(nome:String?, marca:String?, quantidade:String?){
        if let _nome=nome {
            if let _marca=marca {
                if let _quantidade=quantidade {
                    let prod:Product = Product(nome: _nome, marca: _marca, quantidade: Int(_quantidade) ?? 0);
                    self.arrayProdutos.append(prod);
                }
            }
        }
    }
    
    func loadCurrentProduct(indexPath: IndexPath) -> Product{
        return self.arrayProdutos[indexPath.row];
    }
}
