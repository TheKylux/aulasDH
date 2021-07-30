//
//  Controller.swift
//  RoletaRussa
//
//  Created by Alan Silva on 29/07/21.
//

import Foundation


class Controller{
    
    private var myArray: [Pessoa] = []
    
    var count: Int{
        return myArray.count
    }
    
    //Adiciona a pessoa após clicar no botão return
    func addPessoa (value: String){
        
        let _pessoa: Pessoa =  Pessoa(nome: value, idImagem: "Image-1", pagamento: false)
        self.myArray.append(_pessoa)
        
    }
    
    //Retorna o número de linhas com a lógica que o aplicativo necessita
    //Se não tiver nenhum nome, ele irá retornar 1, porque precisa visualizar a célula de tabela vazia
    //Se tiver alguma informação, ele irá retornar a quantidade de linhas necessárias
    func retornoLinhas() -> Int{
        if myArray.count == 0 {
            return 1
        } else {
            return myArray.count
        }
    }
    
    //Função criada para informar a pessoa que deverá ser apresentada na célula, na hora da criação
    func retornaPessoa(value:Int) -> Pessoa {
        return self.myArray[value]
    }
    
    //Função que será utilizado no botão de return para verificar se o botão já pode ser ativado ou não
    func verificarBotao() -> Bool{
        if self.myArray.count < 2 {
            return false
        } else {
            return true
        }
    }
    
    //Função utilizada para sortear a pessoa no botão
    func sortear() {
        var sorteado = myArray.randomElement();
        sorteado?.pagamento = true;
        print(sorteado ?? "");
    }
}
