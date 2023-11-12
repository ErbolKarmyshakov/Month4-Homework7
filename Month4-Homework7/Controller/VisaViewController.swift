//
//  VisaViewController.swift
//  Month4-Homework7
//
//  Created by Mac User on 13/11/23.
//

import UIKit

class VisaViewController: UIViewController, Validator {
    private let visaTf: UITextField = {
        let view = UITextField()
        view.placeholder = "Введите номер карты!"
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.keyboardType = .numberPad
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let continueBtn: UIButton = {
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
        title = "VisaToVisaTransfer"
        allSetUpConstraints()
    }
    private func allSetUpConstraints(){
        setUpConstraintsForVisaTf()
        setUpConstraintsForContinueBtn()
    }
    private func setUpConstraintsForVisaTf(){
        view.addSubview(visaTf)
        NSLayoutConstraint.activate([
            visaTf.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            visaTf.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            visaTf.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setUpConstraintsForContinueBtn(){
        view.addSubview(continueBtn)
        NSLayoutConstraint.activate([
            continueBtn.topAnchor.constraint(equalTo: visaTf.bottomAnchor, constant: 35),
            continueBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueBtn.widthAnchor.constraint(equalToConstant: 250),
            continueBtn.heightAnchor.constraint(equalToConstant: 60)
        ])
        continueBtn.addTarget(self, action: #selector(continueBtnTapped), for: .touchUpInside)
    }
    
    @objc func continueBtnTapped(_ sender: UIButton){
        validate(cardNm: visaTf.text ?? "")
    }
}
