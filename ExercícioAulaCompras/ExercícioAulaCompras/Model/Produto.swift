//
//  Produto.swift
//  ExercícioAulaCompras
//
//  Created by Vitor Lentos on 17/08/21.
//

import Foundation
import UIKit

class Produto {
    
    var nome:String?
    var perfil:String?
    var fotoPerfil:UIImage?
    
    init(nome:String, perfil:String) {
        self.nome = nome;
        self.perfil = perfil;
    }
    
}
