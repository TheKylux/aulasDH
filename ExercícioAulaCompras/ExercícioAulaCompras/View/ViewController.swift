//
//  ViewController.swift
//  ExercícioAulaCompras
//
//  Created by Vitor Lentos on 17/08/21.
//

import UIKit

class ViewController: UIViewController, ProdutoControllerProtocol {
    
    //MARK:- Protocol
    func atualizarTabela() {
        self.produtosTableView.reloadData();
    }
    func cam() {
        print("okay");
        self.getImage(fromSourceType: .camera);
    }
    
    func lib() {
        print("okay");
        self.getImage(fromSourceType: .photoLibrary);
    }
    
    
    //MARK:- Outlets
    @IBOutlet weak var produtosTableView: UITableView!
    
    //MARK:- Variáveis
    private let controller = ProdutoController();
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.produtosTableView.delegate = self;
        self.produtosTableView.dataSource = self;
        
        
        self.produtosTableView.register(UINib(nibName: "ProdutoCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "ProdutoCustomTableViewCell");
        
        
    }

    @IBAction func addTapedButton(_ sender: UIButton) {
        self.present(controller.addProduto(), animated: true, completion: nil);
        self.produtosTableView.reloadData();
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

//MARK:- Extension - TableViewDelegate, TableViewDataSource
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellProdutos : ProdutoCustomTableViewCell? = produtosTableView.dequeueReusableCell(withIdentifier: "ProdutoCustomTableViewCell", for: indexPath) as? ProdutoCustomTableViewCell;
        cellProdutos?.setUP(produto: self.controller.loadCurrentProduto(indexPath: indexPath));
        return cellProdutos ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.present(controller.editPicProduto(indexPath: indexPath), animated: true, completion: nil);
    }
}

//MARK:- Extension - ImagePickerControllerDelegate, NavigationControllerDelegate
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image: UIImage? = info[UIImagePickerController.InfoKey.originalImage] as? UIImage;
        if let _image = image {
            if let _indexPath = controller.indexPathSecreto {
                controller.loadCurrentProduto(indexPath: _indexPath).fotoPerfil = _image;
            }
            
        }
        self.dismiss(animated: true, completion: nil);
        
    }
    
}
