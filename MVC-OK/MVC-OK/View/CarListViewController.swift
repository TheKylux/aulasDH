//
//  ViewController.swift
//  MVC-OK
//
//  Created by Vitor Lentos on 27/07/21.
//

import UIKit

class CarListViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var myTableView: UITableView!
    
    private var controller: CarListController = CarListController();

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell");
        
        self.controller.carregaCarros { success, error in
            
            if success {
                self.myTableView.reloadData();
            } else {
                print(error);
            }
            
        }
        
        
        self.myTableView.delegate = self;
        self.myTableView.dataSource = self;
        // Do any additional setup after loading the view.
    }


}

extension CarListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CustomTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as?
        CustomTableViewCell
        
        cell?.setUp(value: self.controller.loadCurrentCarro(indexPath: indexPath));
        
        return cell ?? UITableViewCell()
    }
}
