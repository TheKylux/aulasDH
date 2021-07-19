//
//  ViewController.swift
//  UIAlertControllerProject
//
//  Created by Vitor Lentos on 15/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedAlertButton(_ sender: UIButton) {
        
        //Criação do alerta
        let alert: UIAlertController = UIAlertController(title: "Alerta", message: "Você quer mesmo fazer isso?", preferredStyle: .alert);
        //Criação dos botões que irão participar do alerta
        let btnCancel:UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Clicou em cancelar");
        }
        let btnConfirmar:UIAlertAction = UIAlertAction(title: "Confirmar", style: .default) { action in
            print("Clicou em confirmar");
        }
        alert.addTextField { textField in
            textField.delegate = self;
            textField.placeholder = "digite seu nome";
        }
        
        //adicionando os botões no alerta
        alert.addAction(btnCancel);
        alert.addAction(btnConfirmar);
        //apresentando o alerta
        self.present(alert, animated: true, completion: nil);
    }
    
    @IBAction func tappedActionSheet(_ sender: UIButton) {
        
        //1
        let optionMenu = UIAlertController(title: "Alerta", message: "Você quer mesmo fazer isso?", preferredStyle: .actionSheet)
                
        // 2
        let deleteAction = UIAlertAction(title: "Delete", style: .default)
        let saveAction = UIAlertAction(title: "Save", style: .default)
                
        // 3
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
                
        // 4
        optionMenu.addAction(deleteAction)
        optionMenu.addAction(saveAction)
        optionMenu.addAction(cancelAction)
                
        // 5
        self.present(optionMenu, animated: true, completion: nil)
        
        
    }
    
    
}

//MARK:- Extensio
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(textField.text);
        return true;
    }
}
