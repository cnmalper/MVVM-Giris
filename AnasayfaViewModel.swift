//
//  AnasayfaViewModel.swift
//  MVVM-Giris
//
//  Created by Alper Canımoğlu on 7.04.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    
    var resultVM = BehaviorSubject<String>(value: "0")
    var mathRepo = MathRepository()
    
    init() {
        resultVM = mathRepo.resultVM
    }
    
    func topla(number1: String, number2: String){
        mathRepo.topla(number1: number1, number2: number2)
    }
    
    func carpma(number1: String, number2: String){
        mathRepo.carpma(number1: number1, number2: number2)
    }
}
