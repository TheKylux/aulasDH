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
    
    private let controller = Controller();
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        setUpViewMeme(meme: selectMeme ?? Meme(id: "", name: "", url: "", width: 0, height: 0, boxCount: 0), imageMeme: controller.returnImage(qualquer: controller.returnIndicador()));
        
    }
    
    func setUpViewMeme (meme:Meme, imageMeme:UIImageView) {
//        guard let imageURL = URL(string: meme.url) else { return }
//        memeImageView.af.setImage(withURL: imageURL);
        memeImageView.image = imageMeme.image;
        memeIdLabel.text = meme.id;
        memeNameLabel.text = meme.name;
    }
    
    

}
