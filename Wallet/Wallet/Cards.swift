//
//  Cartões.swift
//  Wallet
//
//  Created by Vitor Lentos on 01/07/21.
//

import Foundation

class Cards {
    
    var name:String?;
    var creditCardNumber:Int?;
    var expirationDate:String?;
    var flag:Flag?
    
    init(name:String?, creditCardNumber:Int?, expirationDate:String?, flag:Flag?) {
        self.name = name;
        self.creditCardNumber = creditCardNumber;
        self.expirationDate = expirationDate;
        self.flag = flag;
    }
    
    
}

enum Flag: String {
    case mastercard = "mastercard"
    case visa = "visa"
    case elo = "elo"
    case none = "outros"
   
    static func loadFlag(index: Int) -> Flag {
        switch index {
        case 0:
            return .mastercard
        case 1:
            return .visa
        case 2:
            return .elo
        default:break
        }
        return .none
    }
}

//
//struct Cartoes: Codable {
//
//    var cartoes:[CartoesElement]
//}
//
//struct CartoesElement: Codable {
//
//    let id, nome, data, numero, bandeira: String
//}
