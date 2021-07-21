//
//  ViewController.swift
//  PickerView
//
//  Created by Vitor Lentos on 20/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var cidadeImageView: UIImageView!
    
    let arrayNames:[String] = ["Bonito", "Campos do jordão", "Floripa", "Lençois Maranhenses", "Rio de Janeiro"];

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myPickerView.delegate = self;
        self.myPickerView.dataSource = self;
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedSelectButton(_ sender: UIButton) {
        
        //self.myPickerView.selectRow(2, inComponent: 0, animated: true);
        
        self.titleLabel.text = self.arrayNames[self.myPickerView.selectedRow(inComponent: 0)];
        
        cidadeImageView.image = UIImage(named: self.arrayNames[self.myPickerView.selectedRow(inComponent: 0)]);
        
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    //Quantidade de colunas que o picker view terá
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Quantidade de linhas
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.arrayNames.count
    }
    
    //passar o texto para aquela linha
    //row é linha
    //component é colunas
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.arrayNames[row]
    }
    
    //Função que retorna algo quando ele é modificado
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //titleLabel.text = arrayNames[row];
    }
    
}

