//
//  Motorista.swift
//  Uber
//
//  Created by Vitor Lentos on 10/06/21.
//

import Foundation

class Motorista {
    
    private let nome: String;
    private let cpf: String;
    private(set) var placaDoCarro: String;
    private(set) var saldoEmConta: Double;
    
    init(nome:String, cpf:String, placaDoCarro:String, saldoEmConta:Double) {
        self.nome = nome;
        self.cpf = cpf;
        self.placaDoCarro = placaDoCarro;
        self.saldoEmConta = saldoEmConta;
    }
    
    func Viajar(valor: Float){
        
    }
    
    func CalculaViagemX(){
        
    }
    
    func CalculaViagemPool(){
        
    }
    
    func CalculaViagemBlack(){
        
    }
    
}

