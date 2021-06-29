//
//  Vendedor.swift
//  Uber
//
//  Created by Vitor Lentos on 10/06/21.
//

import Foundation

class Vendedor {
    
    enum Peca {
        case terno;
        case vestidos;
        case bone;
    }
    
    private var nome: String;
    private var idade: Int;
    private var cpf: String;
    private var saldoEmConta: Double;
    
    init(nome:String, idade:Int, cpf:String, saldoEmConta:Double) {
        self.nome = nome;
        self.idade = idade;
        self.cpf = cpf;
        self.saldoEmConta = saldoEmConta;
    }
    
    
    
    func vender (qtdPecas: Int, tipo: Peca){
        var total: Int;
        switch tipo {
        case .terno:
            total = qtdPecas * 400;
            if (qtdPecas>=3){
                total -= qtdPecas * 50;
            }
            print("======COMPROVANTE DA VENDA======");
            print("Quantidades:");
            print("Ternos: \(qtdPecas)");
            print("Valor Total: \(total)");
            print("Desconto aplicado: \((qtdPecas * 400) - total)");
            break;
        case .vestidos:
            total = qtdPecas * 900;
            if (qtdPecas > 4){
                print("_______Cliente deve receber um véu de brinde_______");
            }
            print("======COMPROVANTE DA VENDA======");
            print("Quantidades:");
            print("Vestidos: \(qtdPecas)");
            print("Valor Total: \(total)");
            break;
        case .bone:
            var i = 0;
            total = qtdPecas * 50;
            if (qtdPecas > 2){
                i = qtdPecas;
                while(i>2){
                    i-=3;
                    total-=50;
                }
            }
            print("======COMPROVANTE DA VENDA======");
            print("Quantidades:");
            print("Bonés: \(qtdPecas)");
            print("Valor Total: \(total)");
            print("Desconto aplicado: \((qtdPecas * 50) - total)");
            break;
        }
    }
    
    
}

