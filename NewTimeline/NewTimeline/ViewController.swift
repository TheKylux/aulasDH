//
//  ViewController.swift
//  NewTimeline
//
//  Created by Vitor Lentos on 19/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var timeLineTableView: UITableView!
    
    //MARK:- Var
    private var arrayAnimais:[Animal] = [];

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.arrayAnimais = [Animal(nome: "", comportamento: "", imageName: "animal1"), Animal(nome: "", comportamento: "", imageName: "animal2"), Animal(nome: "", comportamento: "", imageName: "animal3"), Animal(nome: "", comportamento: "", imageName: "animal4"), Animal(nome: "", comportamento: "", imageName: "animal5"), Animal(nome: "", comportamento: "", imageName: "animal6"), Animal(nome: "", comportamento: "", imageName: "animal7"), Animal(nome: "", comportamento: "", imageName: "animal8"), Animal(nome: "", comportamento: "", imageName: "animal9"), Animal(nome: "", comportamento: "", imageName: "animal10"), Animal(nome: "", comportamento: "", imageName: "animal11"), Animal(nome: "", comportamento: "", imageName: "animal12"), Animal(nome: "", comportamento: "", imageName: "animal13"), Animal(nome: "", comportamento: "", imageName: "animal14"), Animal(nome: "", comportamento: "", imageName: "animal15"), Animal(nome: "", comportamento: "", imageName: "animal16"), Animal(nome: "", comportamento: "", imageName: "animal17"), Animal(nome: "", comportamento: "", imageName: "animal18") ];
        
        
        self.timeLineTableView.register(UINib(nibName: "HorizontalTableViewCell", bundle: nil), forCellReuseIdentifier: "HorizontalTableViewCell");
        self.timeLineTableView.dataSource = self;
        self.timeLineTableView.delegate = self;
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:HorizontalTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "HorizontalTableViewCell", for: indexPath) as? HorizontalTableViewCell;
        
        cell?.setup(value: arrayAnimais);
        
        return cell ?? UITableViewCell();
        
    }
    
    
}
