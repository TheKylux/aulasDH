//
//  HorizontalTableViewCell.swift
//  NewTimeline
//
//  Created by Vitor Lentos on 19/07/21.
//

import UIKit

class HorizontalTableViewCell: UITableViewCell {
    
    //MARK:- Variáveis
    private var arrayAnimais:[Animal] = [];

    //MARK:- Outlets
    @IBOutlet weak var horizontalCollectionView: UICollectionView!
    
    //MARK:- Functions
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.horizontalCollectionView.register(UINib(nibName: "CicleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CicleCollectionViewCell");
        self.horizontalCollectionView.delegate = self;
        self.horizontalCollectionView.dataSource = self;
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value:[Animal]) {
        self.arrayAnimais = value;
        
        self.horizontalCollectionView.reloadData();
    }
    
}

extension HorizontalTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayAnimais.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:CicleCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CicleCollectionViewCell", for: indexPath) as? CicleCollectionViewCell;
        
        cell?.setup(value: self.arrayAnimais[indexPath.row]);
        
        return cell ?? UICollectionViewCell();
        
    }
    
    
}
