//
//  Controller.swift
//  NetworkingAPP
//
//  Created by Vitor Lentos on 26/08/21.
//

import Foundation
import Alamofire
import AlamofireImage
import UIKit

private var arrayImages:[UIImageView] = [];
private var indicador:Int = 0;

protocol ControllerDelegate:AnyObject {
    func reloadTableView();
}

class Controller {
    
    private var arrayMemes:[Meme] = [];
    
    weak var delegate: ControllerDelegate?
    
    
    func setarIndicador (num: Int) {
        indicador = num;
    }
    
    func returnIndicador() -> Int {
        print(indicador);
        return indicador
    }
    
    var count:Int {
        return arrayMemes.count;
    }
    
    func loadMeme(indexPath: IndexPath) -> Meme {
        return arrayMemes[indexPath.row]
    }
    
    func returnImage(qualquer: Int) -> UIImageView {
        
        return arrayImages[qualquer]
    }
    
    func loadData() {
        AF.request("https://api.imgflip.com/get_memes").responseJSON { data in
            
            if data.response?.statusCode == 200 {
                
                if let _data = data.data {
                    
                    do{
                        let result: Result? = try JSONDecoder().decode(Result.self, from: _data)
                        //print(result?.data.memes.count);
                        if let listaMemes = result?.data.memes {
                            for meme in listaMemes {
                                
                                let imageMeme:UIImageView = UIImageView();
                                guard let imageURL = URL(string: meme.url) else { return }
                                imageMeme.af.setImage(withURL: imageURL);
                                
                                let mem = Meme(id: meme.id, name: meme.name, url: meme.url, width: meme.width, height: meme.height, boxCount: meme.boxCount);
                                self.arrayMemes.append(mem);
                                arrayImages.append(imageMeme);
                            }
                            //print("AQUI\(self.arrayImages.count)");
                            self.delegate?.reloadTableView();
                        }
                        
                    }catch {
                        print(error);
                    }
                    
                }
                //print(data.response?.statusCode);
            }
            
        }
    }
    
    
    
}
