//
//  ViewController.swift
//  Gestures
//
//  Created by Vitor Lentos on 22/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var viewzinha: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adicionando o tap via código
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handlerTap(_:)));
        self.viewzinha.addGestureRecognizer(tap);
        
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(self.handlerLongPress(_:)));
        self.viewzinha.addGestureRecognizer(longGesture);
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(self.handlerSwipe(_:)));
        self.viewzinha.addGestureRecognizer(swipeGesture);
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func handlerTap( _ sender: UITapGestureRecognizer) {
        print("handlerTap");
    }
    
    @objc func handlerLongPress ( _ sender: UILongPressGestureRecognizer){
        print("handlerLongPress");
    }
    
    @objc func handlerSwipe ( _ sender: UISwipeGestureRecognizer){
        print("handlerSwipe");
    }

    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        print("View pressionada");
    }
    
    @IBAction func longGestureAction(_ sender: UILongPressGestureRecognizer) {
        print("View pressionada longamente");
    }
    
    @IBAction func swipeGestureAction(_ sender: UISwipeGestureRecognizer) {
        print("View arrastada");
    }
    
    @IBAction func pinchGestureAction(_ sender: UIPinchGestureRecognizer) {
        
        print("pinchGestureAction");
        self.viewzinha.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale);
        
    }
    
}

