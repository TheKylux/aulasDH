//
//  ViewController.swift
//  ShopList
//
//  Created by Vitor Lentos on 10/08/21.
//

import UIKit

class HomeView: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var produtosButton: UIButton!
    @IBOutlet weak var listaDeComprasButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.produtosButton.roundCorners(cornerRadius: 15.0, typeCorners: [.inferiorDireito, .inferiorEsquerdo, .superiorDireito, .superiorEsquerdo]);
        self.listaDeComprasButton.roundCorners(cornerRadius: 15.0, typeCorners: [.inferiorDireito, .inferiorEsquerdo, .superiorDireito, .superiorEsquerdo]);
        // Do any additional setup after loading the view.
    }


}



