//
//  ViewController.swift
//  RoletaRussa
//
//  Created by Alan Silva on 29/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textNome: UITextField!
    @IBOutlet weak var btnSortear: UIButton!
    @IBOutlet weak var myTableView: UITableView!
    
    private let controller = Controller()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        self.textNome.delegate = self
        
        // Do any additional setup after loading the view.
        self.myTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        self.myTableView.register(UINib(nibName: "CustomCellNomes", bundle: nil), forCellReuseIdentifier: "CustomCellNomes")
        
    }
    
    @IBAction func btnSortear(_ sender: UIButton) {
        controller.sortear();
        btnSortear.isEnabled = false;
    }
    

}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.retornoLinhas()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //MARK:- TODO: Precisa jogar isso no Controller
        if controller.count == 0 {
            let cell: CustomCell? = myTableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
            return cell ?? CustomCell()
        } else {
            let cell2: CustomCellNomes? = myTableView.dequeueReusableCell(withIdentifier: "CustomCellNomes", for: indexPath) as? CustomCellNomes
            cell2?.setUp(value: controller.retornaPessoa(value: indexPath.row));
            return cell2 ?? CustomCellNomes()
        }
    }
}

extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        controller.addPessoa(value: textNome.text ?? "")
        myTableView.reloadData();
        btnSortear.isEnabled = controller.verificarBotao();
        self.textNome.resignFirstResponder();
        return true
    }
    
    
}
