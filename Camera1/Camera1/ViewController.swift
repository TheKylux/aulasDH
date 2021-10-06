//
//  ViewController.swift
//  Camera1
//
//  Created by Vitor Lentos on 17/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var myImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { action in
            print("camera");
            self.getImage(fromSourceType: .camera);
        }))
        
        alert.addAction(UIAlertAction(title: "Álbum", style: .default, handler: { action in
            print("album");
            self.getImage(fromSourceType: .photoLibrary);
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { action in
            print("cancelar");
        }))
        
        self.present(alert, animated: true, completion: nil);
    }
    
    func getImage (fromSourceType:UIImagePickerController.SourceType) {
        
        if UIImagePickerController.isSourceTypeAvailable(fromSourceType){
            let imagePickerController = UIImagePickerController();
            imagePickerController.delegate = self;
            imagePickerController.sourceType = fromSourceType;
            imagePickerController.allowsEditing = false;
            
            self.present(imagePickerController, animated: true, completion: nil);
        }
        
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image: UIImage? = info[UIImagePickerController.InfoKey.originalImage] as? UIImage;
        if let _image = image {
            self.myImageView.image = _image;
        }
        self.dismiss(animated: true, completion: nil);
        
    }
    
}

