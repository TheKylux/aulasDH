//
//  Carro.swift
//  MVC-OK
//
//  Created by Vitor Lentos on 27/07/21.
//

import Foundation

class Carro {
    
    var id:String?;
    var modelo:String?;
    var ano:Int?;
    var cor:String?;
    var imagem:String?;
    
    init(dicionario:[String:Any]) {
        self.id = dicionario["id"] as? String;
        self.modelo = dicionario["modelo"] as? String;
        self.ano = dicionario["ano"] as? Int;
        self.cor = dicionario["cor"] as? String;
        self.imagem = dicionario["imagem"] as? String;
    }
    
}
