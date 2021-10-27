//
//  LogoContainerView.swift
//  AulaViewCode
//
//  Created by Vitor Lentos on 26/10/21.
//

import UIKit

class LogoContainerView: UIView {
    
    let logo = UIImageView(image: #imageLiteral(resourceName: "Instagram_logo_white"))
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension LogoContainerView: ViewCode {
    func buildViewHierarchy() {
        addSubview(logo)
    }
    
    func addConstrains() {
        logo.centerInSuperview(size: CGSize(width: 200, height: 50))
    }
    
    func additionalConfiguration() {
        logo.contentMode = .scaleAspectFill
        backgroundColor = UIColor(red: 0/255, green: 120/255, blue: 175/255, alpha: 1)
    }
    
    
}
