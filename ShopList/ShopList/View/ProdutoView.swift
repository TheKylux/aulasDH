//
//  ProdutoView.swift
//  ShopList
//
//  Created by Vitor Lentos on 10/08/21.
//

import UIKit

class ProdutoView: UIViewController {
    
    //MARK:- variáveis
    let controller:ProdutoController = ProdutoController();
    
    //MARK:- outlets
    @IBOutlet weak var produtoTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.produtoTableView.delegate = self;
        self.produtoTableView.dataSource = self;
        self.produtoTableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell");
        
        print("\(controller.count)");
        

        // Do any additional setup after loading the view.
    }
    
    //MARK:- Actions
    @IBAction func addProduto(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "adicionarProdutoSegue", sender: nil);
    }
    
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        self.produtoTableView.reloadData();
        print("Atualizado");
    }
    
}

//MARK:- Extension TableView
extension ProdutoView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        controller.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ProductTableViewCell? = produtoTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell;
        cell?.setUp(produto: controller.loadCurrentProduct(indexPath: indexPath));
        
        return cell ?? ProductTableViewCell()
    }
    
    
}
