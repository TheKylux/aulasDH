//
//  ViewController.swift
//  NetworkingAPP
//
//  Created by Vitor Lentos on 24/08/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AF.request("https://api.imgflip.com/get_memes").responseJSON { data in
            
            if data.response?.statusCode == 200 {
                
                if let _data = data.data {
                    
                    do{
                        let result: Result? = try JSONDecoder().decode(Result.self, from: _data)
                        print(result?.data.memes.count);
                    }catch {
                        
                        
                    }
                    
                }
                print(data.response?.statusCode);
            }
            
        }
        
        
        
    }


}

