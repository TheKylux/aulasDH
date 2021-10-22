//
//  ViewCode.swift
//  AulaViewCode
//
//  Created by Vitor Lentos on 21/10/21.
//

import Foundation

protocol ViewCode {
    func buildViewHierarchy()
    func addConstrains()
    func additionalConfiguration()
    func setup()
}

extension ViewCode {
    
    func setup() {
        buildViewHierarchy()
        addConstrains()
        additionalConfiguration()
    }
    
}
