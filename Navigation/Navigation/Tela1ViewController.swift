//
//  ViewController.swift
//  Navigation
//
//  Created by Vitor Lentos on 01/07/21.
//

import UIKit

class Tela1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedProximaTelaButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "Tela2ViewController", sender: nil);
        
    }
    


}

