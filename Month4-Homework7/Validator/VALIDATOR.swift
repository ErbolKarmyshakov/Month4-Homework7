//
//  VALIDATOR.swift
//  Month4-Homework7
//
//  Created by Mac User on 13/11/23.
//

import UIKit
protocol Validator{
    func validate(cardNm: String)
}

extension Validator{
    func validate(cardNm: String){
        if cardNm.count >= 4 && !(cardNm.isEmpty) {
            print("card is validate ")
        } else {
            print("card is not validate ")
        }
    }
}

