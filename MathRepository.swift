//
//  MathRepository.swift
//  MVVM-Giris
//
//  Created by Alper Canımoğlu on 9.04.2024.
//

import Foundation
import RxSwift

class MathRepository {
    
    var resultVM = BehaviorSubject<String>(value: "0")
    
    func topla(number1: String, number2: String){
        if let number1Int = Int(number1), let number2Int = Int(number2) {
            let result = number1Int + number2Int
            resultVM.onNext(String(result)) // (1) tetikleme
        }
    }
    
    func carpma(number1: String, number2: String){
        if let number1Int = Int(number1), let number2Int = Int(number2) {
            let result = number1Int * number2Int
            resultVM.onNext(String(result)) // (1) tetikleme
        }
    }
}
