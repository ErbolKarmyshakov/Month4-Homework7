//
//  ElcardViewController.swift
//  Month4-Homework7
//
//  Created by Mac User on 13/11/23.
//

import UIKit

class ElcardViewController: UIViewController, Validator {
    private let elcardTf: UITextField = {
        let view = UITextField()
        view.placeholder = "Введите номер карты!"
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.keyboardType = .numberPad
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let continueBtnInElcard: UIButton = {
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
        title =  "ElcardToElcardTransfer"
        allSetUpConstraints()
    }
    private func allSetUpConstraints(){
        setUpConstraintsForElcardTf()
        setUpConstraintsForContinueBtnInElcard()
    }
    
    private func setUpConstraintsForElcardTf(){
        view.addSubview(elcardTf)
        NSLayoutConstraint.activate([
            elcardTf.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            elcardTf.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            elcardTf.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setUpConstraintsForContinueBtnInElcard(){
        view.addSubview(continueBtnInElcard)
        NSLayoutConstraint.activate([
            continueBtnInElcard.topAnchor.constraint(equalTo: elcardTf.bottomAnchor, constant: 35),
            continueBtnInElcard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueBtnInElcard.widthAnchor.constraint(equalToConstant: 250),
            continueBtnInElcard.heightAnchor.constraint(equalToConstant: 60)
        ])
        continueBtnInElcard.addTarget(self, action: #selector(continueBtnTappedInElcard), for: .touchUpInside)
    }
    
    
    @objc func continueBtnTappedInElcard(_ sender: UIButton){
        validate(cardNm: elcardTf.text ?? "")
    }
    
}
