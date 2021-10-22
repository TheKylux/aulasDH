//
//  ViewController.swift
//  AulaViewCode
//
//  Created by Vitor Lentos on 21/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    let homeView = HomeView(title: "Digital Fucking House")

    override func viewDidLoad() {
        super.viewDidLoad()
        //setup()
        
//        let button = UIButton(type: .system)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("Clique aqui", for: .normal)
//        view.addSubview(button)
//        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
//        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
//        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
//        button.backgroundColor = .systemGray3
//
        
        
//        let view1 = UIView()
//        view1.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(view1)
//        view1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
//        view1.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        // view1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20).isActive = false
//        view1.heightAnchor.constraint(equalToConstant: 120).isActive = true
//        view1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//        view1.backgroundColor = .yellow
//
//        let view2 = UIView()
//        view2.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(view2)
//        view2.backgroundColor = .green
//        view2.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        view2.heightAnchor.constraint(equalToConstant: 120).isActive = true
//        view2.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 20).isActive = true
//        view2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
//        // view2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20).isActive = false
//        //view2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//
//        let view3 = UIView()
//        view3.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(view3)
//        view3.backgroundColor = .purple
//        view3.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        view3.heightAnchor.constraint(equalToConstant: 120).isActive = true
//        view3.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 20).isActive = true
//        view3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
//
//        let view4 = UIView()
//        view4.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(view4)
//        view4.backgroundColor = .orange
//        view4.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        // view4.heightAnchor.constraint(equalToConstant: 150).isActive = true
//        view4.topAnchor.constraint(equalTo: view3.bottomAnchor, constant: 20).isActive = true
//        view4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
//        view4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
//
//        let view5 = UIView()
//        view5.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(view5)
//        view5.backgroundColor = .blue
//        view5.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//        view5.leadingAnchor.constraint(equalTo: view1.trailingAnchor, constant: 20).isActive = true
//        view5.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
//        view5.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
    }
    
    override func loadView() {
        view = homeView
    }


}




