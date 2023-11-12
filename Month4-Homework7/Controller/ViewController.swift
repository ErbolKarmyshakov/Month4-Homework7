//
//  ViewController.swift
//  Month4-Homework7
//
//  Created by Mac User on 11/11/23.
//

import UIKit

class ViewController: UIViewController {
    private let visaBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("VisaToVisaTransfer", for: .normal)
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 16
        view.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .yellow
        return view
    }()
    
    private let elcardBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("ElcardToElcardTransfer", for: .normal)
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 16
        view.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .yellow
        return view
    }()
    
    private let swiftTransferBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("SwiftTransfer", for: .normal)
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 16
        view.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .yellow
        return view
    }()
    
    private let interBankBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("InterbankTransfer", for: .normal)
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 16
        view.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .yellow
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBrown
        allSetUpConstraints()
    }
    private func allSetUpConstraints(){
        setUpConstraintsForVisaBtn()
        setUpConstraintsForElcardBtn()
        setUpConstraintsForSwiftBtn()
        setUpConstraintsForInterBank()
    }
    
    private func setUpConstraintsForVisaBtn(){
        view.addSubview(visaBtn)
        NSLayoutConstraint.activate([
            visaBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            visaBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            visaBtn.widthAnchor.constraint(equalToConstant: 250),
            visaBtn.heightAnchor.constraint(equalToConstant: 60)
        ])
        visaBtn.addTarget(self, action: #selector(visaBtnTapped), for: .touchUpInside)
    }
    
    @objc func visaBtnTapped(_ sender: UIButton){
        let viewcontroller = VisaViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
    
    private func setUpConstraintsForElcardBtn(){
        view.addSubview(elcardBtn)
        NSLayoutConstraint.activate([
            elcardBtn.topAnchor.constraint(equalTo: visaBtn.bottomAnchor, constant: 35),
            elcardBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            elcardBtn.widthAnchor.constraint(equalToConstant: 250),
            elcardBtn.heightAnchor.constraint(equalToConstant: 60)
        ])
        elcardBtn.addTarget(self, action: #selector(elcardBtnTapped), for: .touchUpInside)
    }
    
    @objc func elcardBtnTapped(_ sender: UIButton){
        let viewcontroller = ElcardViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
    
    private func setUpConstraintsForSwiftBtn(){
        view.addSubview(swiftTransferBtn)
        NSLayoutConstraint.activate([
            swiftTransferBtn.topAnchor.constraint(equalTo: elcardBtn.bottomAnchor, constant: 35),
            swiftTransferBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftTransferBtn.widthAnchor.constraint(equalToConstant: 250),
            swiftTransferBtn.heightAnchor.constraint(equalToConstant: 60)
        ])
        swiftTransferBtn.addTarget(self, action: #selector(swiftBtnTapped), for: .touchUpInside)
    }
    
    @objc func swiftBtnTapped(_ sender: UIButton){
        let viewcontroller = SwiftViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
    
    private func setUpConstraintsForInterBank(){
        view.addSubview(interBankBtn)
        NSLayoutConstraint.activate([
            interBankBtn.topAnchor.constraint(equalTo: swiftTransferBtn.bottomAnchor, constant: 35),
            interBankBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            interBankBtn.widthAnchor.constraint(equalToConstant: 250),
            interBankBtn.heightAnchor.constraint(equalToConstant: 60)
        ])
        interBankBtn.addTarget(self, action: #selector(interBtnTapped), for: .touchUpInside)
    }
    
    @objc func interBtnTapped(_ sender: UIButton){
        let viewcontroller = ElcardViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
}

