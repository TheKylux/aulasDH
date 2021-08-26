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
    
    var arrayMemes:[Meme] = [];
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self;
        self.myTableView.dataSource = self;
        
        
        
        AF.request("https://api.imgflip.com/get_memes").responseJSON { data in
            
            if data.response?.statusCode == 200 {
                
                if let _data = data.data {
                    
                    do{
                        let result: Result? = try JSONDecoder().decode(Result.self, from: _data)
                        //print(result?.data.memes.count);
                        if let listaMemes = result?.data.memes {
                            for meme in listaMemes {
                                let mem = Meme(id: meme.id, name: meme.name, url: meme.url, width: meme.width, height: meme.height, boxCount: meme.boxCount);
                                self.arrayMemes.append(mem);
                            }
                            self.myTableView.reloadData();
                        }
                        
                    }catch {
                        print(error);
                    }
                    
                }
                //print(data.response?.statusCode);
            }
            
        }
        
        
        
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
        return arrayMemes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
        cell.textLabel?.text = arrayMemes[indexPath.row].id;
        cell.detailTextLabel?.text = arrayMemes[indexPath.row].name;
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MemeSegue", sender: self.arrayMemes[indexPath.row]);
    }
    
    
}

