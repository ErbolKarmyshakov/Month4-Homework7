//
//  SwiftViewController.swift
//  Month4-Homework7
//
//  Created by Mac User on 13/11/23.
//

import UIKit

class SwiftViewController: UIViewController, Validator {
    
    private let swiftTf: UITextField = {
        let view = UITextField()
        view.placeholder = "Введите номер карты!"
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.keyboardType = .numberPad
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let continueBtnInSwift: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Continue", for: .normal)
        view.backgroundColor = .brown
        view.layer.cornerRadius = 16
        view.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .black
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title  = "SwiftTransfer"
        allSetUpConstraints()
    }
    private func allSetUpConstraints(){
        setUpConstraintsForSwiftTf()
        setUpConstraintsForContinueBtnInSwift()
    }
    private func setUpConstraintsForSwiftTf(){
        view.addSubview(swiftTf)
        NSLayoutConstraint.activate([
            swiftTf.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            swiftTf.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftTf.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setUpConstraintsForContinueBtnInSwift(){
        view.addSubview(continueBtnInSwift)
        NSLayoutConstraint.activate([
            continueBtnInSwift.topAnchor.constraint(equalTo: swiftTf.bottomAnchor, constant: 35),
            continueBtnInSwift.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueBtnInSwift.widthAnchor.constraint(equalToConstant: 250),
            continueBtnInSwift.heightAnchor.constraint(equalToConstant: 60)
        ])
        continueBtnInSwift.addTarget(self, action: #selector(continueBtnTappedInSwift), for: .touchUpInside)
    }
    
    @objc func continueBtnTappedInSwift(_ sender: UIButton){
        validate(cardNm: swiftTf.text ?? "")
    }
    
}
