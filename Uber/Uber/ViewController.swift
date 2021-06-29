//
//  ViewController.swift
//  Uber
//
//  Created by Vitor Lentos on 10/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var vendedor1: Vendedor = Vendedor(nome: "Vitor", idade: 27, cpf: "373.373.373-4", saldoEmConta: 10.0);
        vendedor1.vender(qtdPecas: 4, tipo: .terno);
        print("----------------------------");
        vendedor1.vender(qtdPecas: 4, tipo: .vestidos);
        print("----------------------------");
        vendedor1.vender(qtdPecas: 12, tipo: .bone);
        print("----------------------------");
        
    }


}

