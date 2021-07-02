//
//  ViewController.swift
//  Wallet
//
//  Created by Vitor Lentos on 01/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var myTableView: UITableView!
    
    //MARK:- Var
    var arrayCards : [Cards] = [];
    
    let card1:Cards = Cards(name: "Vitor Penteado Lentos", creditCardNumber: 1051205126512651, expirationDate: "12/25", flag: .mastercard);
    let card2:Cards = Cards(name: "Vitor Lentos", creditCardNumber: 2051205126512651, expirationDate: "11/25", flag: .visa);
    let card3:Cards = Cards(name: "Vitor Penteado", creditCardNumber: 3051205126512651, expirationDate: "10/25", flag: .mastercard);
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        arrayCards.append(card1);
        arrayCards.append(card2);
        arrayCards.append(card3);
        
        
        self.myTableView.register(UINib(nibName: "CardsTableViewCell", bundle: nil), forCellReuseIdentifier: "cell");
        self.myTableView.delegate = self;
        self.myTableView.dataSource = self;
        
    }
}

//MARK:-

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CardsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CardsTableViewCell;
        cell?.setUp(value: self.arrayCards[indexPath.row]);
        
        return cell ?? CardsTableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedCard:Cards = self.arrayCards[indexPath.row];
        
        //performSegue
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Segue
        
    }
    
    
}

