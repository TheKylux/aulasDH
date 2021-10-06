//
//  UIImageView+Extension.swift
//  NewTimeline
//
//  Created by Vitor Lentos on 20/07/21.
//

import Foundation
import UIKit

extension UIImageView {
    
    func circleImage() {
        
        self.layer.cornerRadius = 0.5 * self.bounds.size.width;
        self.clipsToBounds = true;
        self.layer.borderColor = UIColor.gray.cgColor;
        self.layer.borderWidth = 2.5;
        
    }
    
}
