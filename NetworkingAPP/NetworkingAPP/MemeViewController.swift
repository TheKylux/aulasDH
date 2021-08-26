//
//  MemeViewController.swift
//  NetworkingAPP
//
//  Created by Vitor Lentos on 26/08/21.
//

import UIKit
import AlamofireImage

class MemeViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeIdLabel: UILabel!
    @IBOutlet weak var memeNameLabel: UILabel!
    
    var selectMeme : Meme?;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp(meme: selectMeme ?? Meme(id: "", name: "", url: "", width: 0, height: 0, boxCount: 0));
        
        // Do any additional setup after loading the view.
    }
    
    
    func setUp (meme:Meme) {
        guard let imageURL = URL(string: meme.url) else { return }
        memeImageView.af.setImage(withURL: imageURL);
        memeIdLabel.text = meme.id;
        memeNameLabel.text = meme.name;
    }
    

}
