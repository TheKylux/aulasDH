//
//  ViewController.swift
//  NetworkingAPP
//
//  Created by Vitor Lentos on 24/08/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var myTableView: UITableView!
    
    private let controller = Controller();
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self;
        self.myTableView.dataSource = self;
        self.myTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell");
        self.controller.delegate = self;
        
        self.controller.loadData();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MemeSegue" {
            let memeVC:MemeViewController? = segue.destination as? MemeViewController;
            memeVC?.selectMeme = sender as? Meme ?? Meme(id: "", name: "", url: "", width: 0, height: 0, boxCount: 0);
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print (controller.count);
        return controller.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2:CustomTableViewCell = myTableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell;
        cell2.setUp(meme: controller.loadMeme(indexPath: indexPath));
        return cell2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        controller.setarIndicador(num: indexPath.row);
        print(indexPath.row);
        performSegue(withIdentifier: "MemeSegue", sender: controller.loadMeme(indexPath: indexPath));
    }
    
    
}

extension ViewController: ControllerDelegate {
    func reloadTableView() {
        self.myTableView.reloadData();
    }
}

