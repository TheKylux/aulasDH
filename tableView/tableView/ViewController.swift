//
//  ViewController.swift
//  tableView
//
//  Created by Vitor Lentos on 15/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK:- Outlets
    
    @IBOutlet weak var myTableView: UITableView!
    
    //MARK:- Variáveis
    var carros: [Carro] = [];
    var motos: [Moto] = [];
    
    var moto1 : Moto = Moto(marca: "Honda0", modelo: "CB1");
    var moto2 : Moto = Moto(marca: "Honda1", modelo: "CB2");
    var moto3 : Moto = Moto(marca: "Honda2", modelo: "CB3");
    
    var carro1 : Carro = Carro(marca: "Volkswagen1", modelo: "Gol1");
    var carro2 : Carro = Carro(marca: "Volkswagen2", modelo: "Gol2");
    var carro3 : Carro = Carro(marca: "Volkswagen3", modelo: "Gol3");
    
    enum Section:Int {
        case carro = 0;
        case moto = 1;
    }
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        
        
        self.myTableView.delegate = self;
        self.myTableView.dataSource = self;
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        motos.append(moto1);
        motos.append(moto2);
        //motos.append(moto3);
        carros.append(carro1);
        carros.append(carro2);
        carros.append(carro3);
        
    }
}

//MARK:- UITableViewDelegate, UITableViewDataSource
    
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    //Linhas na tabela
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case Section.carro.rawValue:
            return carros.count;
        case Section.moto.rawValue:
            return motos.count;
        default:
            return 15;
        }
    }
    
    //Retorna a celula criada
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
        
        switch indexPath.section {
        case Section.carro.rawValue:
            cell.textLabel?.text = carros[indexPath.row].marca;
            cell.detailTextLabel?.text = carros[indexPath.row].modelo;
            return cell;
        case Section.moto.rawValue:
            cell.textLabel?.text = motos[indexPath.row].marca;
            cell.detailTextLabel?.text = motos[indexPath.row].modelo;
            return cell;
        default:
            return cell;
        }
    }
    
    //Quantidade de seções
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //Célula selecionada
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
        case Section.carro.rawValue:
            print("O carro selecionado foi o \(carros[indexPath.row].modelo)");
        case Section.moto.rawValue:
            print("A moto selecionada foi a \(motos[indexPath.row].modelo)");
        default:
            print("Nada foi selecionado");
        }
        
    }
    
    //Modificando o nome da section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case Section.carro.rawValue:
            return "Carros";
        case Section.moto.rawValue:
            return "Motos";
        default:
            return "";
        }
        
    }
    
        
    }

