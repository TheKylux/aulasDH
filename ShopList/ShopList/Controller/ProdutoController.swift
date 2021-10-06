//
//  ProdutoController.swift
//  ShopList
//
//  Created by Vitor Lentos on 10/08/21.
//

import Foundation

private var arrayProdutos:[Product] = [Product(nome: "Bolacha", marca: "Teste", quantidade: 1), Product(nome: "Bolacha2", marca: "Teste2", quantidade: 12)];
private var arrayCompras:[Product] = [];

class ProdutoController {
    
    //MARK:- Functions de Produtos
    
    //MARK: Count dos produtos
    var count:Int{
        return arrayProdutos.count;
    }
    
    //MARK: Função para adicionar produtos
    func addProduto(nome:String?, marca:String?, quantidade:String?){
        if let _nome=nome {
            if let _marca=marca {
                if let _quantidade=quantidade {
                    let prod:Product = Product(nome: _nome, marca: _marca, quantidade: Int(_quantidade) ?? 0);
                    //self.arrayProdutos.append(prod);
                    arrayProdutos += [prod];
                    for value in arrayProdutos {
                        print(value.nome);
                    }
                }
            }
        }
    }
    
    //MARK: Retorna o array de produtos por linha do indexPath
    func loadCurrentProduct(indexPath: IndexPath) -> Product{
        return arrayProdutos[indexPath.row];
    }
    
    //MARK:- Functions da Lista de Compras
    
    //MARK: Count da Lista de Compras
    var countLista:Int{
        return arrayCompras.count;
    }
    
    //MARK: Função para adicionar produtos na lista de compras
    func addLista(produto:Product, quantidade:String) {
        let _prod:Product = Product(nome: produto.nome, marca: produto.marca, quantidade: Int(quantidade) ?? 0)
        arrayCompras.append(_prod);
    }
    
    //MARK: Retorna o array de produtos que está na Lista de Compras por linha do indexPath
    func loadCurrentProductLista(indexPath: IndexPath) -> Product {
        if arrayCompras.count != 0 {
            return arrayCompras[indexPath.row];
        } else {
            return Product(nome: "", marca: "", quantidade: 0);
        }
    }
}
