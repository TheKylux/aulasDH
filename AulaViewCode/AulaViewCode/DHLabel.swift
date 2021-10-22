//
//  DHLabel.swift
//  AulaViewCode
//
//  Created by Vitor Lentos on 21/10/21.
//

import UIKit

class DHLabel: UILabel {
    private let title: String
    init(title: String) {
        self.title = title
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        text = title
        numberOfLines = 0
        backgroundColor = .lightGray
        textAlignment = .center
        textColor = .white
        layer.cornerRadius = 5
        layer.masksToBounds = true
        font = .preferredFont(forTextStyle: .headline)
    }
}
