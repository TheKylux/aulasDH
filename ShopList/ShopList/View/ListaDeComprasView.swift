//
//  ListaDeComprasView.swift
//  ShopList
//
//  Created by Vitor Lentos on 11/08/21.
//

import UIKit

class ListaDeComprasView: UIViewController {
    
    //MARK:- variáveis
    let controller:ProdutoController = ProdutoController();
    
    //MARK:- Outlets
    @IBOutlet weak var produtoTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.produtoTableView.delegate = self;
        self.produtoTableView.dataSource = self;
        self.produtoTableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell");

        // Do any additional setup after loading the view.
    }
    

    //MARK:- Actions
    @IBAction func reloadTable(_ sender: UIBarButtonItem) {
        self.produtoTableView.reloadData();
    }
    

}

extension ListaDeComprasView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.countLista
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ProductTableViewCell? = produtoTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell;
        cell?.setUp(produto: controller.loadCurrentProductLista(indexPath: indexPath));
        
        return cell ?? ProductTableViewCell()
    }
    
    
}
