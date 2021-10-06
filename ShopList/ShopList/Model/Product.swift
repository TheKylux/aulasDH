//
//  Product.swift
//  ShopList
//
//  Created by Vitor Lentos on 10/08/21.
//

import Foundation

class Product {
    
    let nome: String;
    let marca: String;
    let quantidade: Int;
    
    init(nome:String, marca:String, quantidade:Int) {
        self.nome=nome;
        self.marca=marca;
        self.quantidade=quantidade;
    }
    
}

