//
//  InterViewController.swift
//  Month4-Homework7
//
//  Created by Mac User on 13/11/23.
//

import UIKit

class InterViewController: UIViewController, Validator {
    private let interTf: UITextField = {
        let view = UITextField()
        view.placeholder = "Введите номер карты!"
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.keyboardType = .numberPad
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let continueBtnInInter: UIButton = {
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
        title = "InterbankTransfer"
        allSetUpConstraints()
    }
    
    private func allSetUpConstraints(){
        setUpConstraintsForInterTf()
        setUpConstraintsForContinueBtnInInter()
    }
    
    private func setUpConstraintsForInterTf(){
        view.addSubview(interTf)
        NSLayoutConstraint.activate([
            interTf.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            interTf.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            interTf.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setUpConstraintsForContinueBtnInInter(){
        view.addSubview(continueBtnInInter)
        NSLayoutConstraint.activate([
            continueBtnInInter.topAnchor.constraint(equalTo: interTf.bottomAnchor, constant: 35),
            continueBtnInInter.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueBtnInInter.widthAnchor.constraint(equalToConstant: 250),
            continueBtnInInter.heightAnchor.constraint(equalToConstant: 60)
        ])
        continueBtnInInter.addTarget(self, action: #selector(continueBtnTappedInInter), for: .touchUpInside)
    }
    
    @objc func continueBtnTappedInInter(_ sender: UIButton){
        validate(cardNm: interTf.text ?? "")
    }
    
}
