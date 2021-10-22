//
//  HomeView.swift
//  AulaViewCode
//
//  Created by Vitor Lentos on 21/10/21.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    private let title: String
    lazy var titleLabel: UILabel = {
        let label = DHLabel(title: title)
        return label
    }()
    
    lazy var containerStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [leftStack, rightStack])
        stack.layoutMargins = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.distribution = .fillEqually
        stack.spacing = 20
        stack.axis = .horizontal //Aparentemente já é o padrão
        return stack
    }()
    
    lazy var leftStack: UIStackView = {
        let bottomView = UIView()
        bottomView.backgroundColor = .orange
        let stack = UIStackView(arrangedSubviews: [titleLabel, groupStack, bottomView])
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    
    let groupStack: UIStackView = {
        let firstView = UIView()
        firstView.backgroundColor = .yellow
        
        let secondView = UIView()
        secondView.backgroundColor = .green
        
        let thirdView = UIView()
        thirdView.backgroundColor = .purple
        
        let stack = UIStackView(arrangedSubviews: [firstView, secondView, thirdView])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        
        return stack
    }()
    
    let rightStack: UIStackView = {
        let firstView = UIView()
        firstView.backgroundColor = .blue
        
        return UIStackView(arrangedSubviews: [firstView])
    }()
    
    init(title: String) {
        self.title = title
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: ViewCode {
    func buildViewHierarchy() {
        addSubview(containerStack)
    }
    
    func addConstrains() {
        containerStack.translatesAutoresizingMaskIntoConstraints = false
        
        containerStack.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerStack.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        containerStack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerStack.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        groupStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
    }
    
    func additionalConfiguration() {
        backgroundColor = .white
    }
}
