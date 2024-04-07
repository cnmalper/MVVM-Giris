//
//  AnasayfaViewModel.swift
//  MVVM-Giris
//
//  Created by Alper Canımoğlu on 7.04.2024.
//

import Foundation

class AnasayfaViewModel {
    
    var resultVM = "0"
    
    func topla(number1: String, number2: String){
        if let number1Int = Int(number1), let number2Int = Int(number2) {
            let result = number1Int + number2Int
            resultVM = String(result)
        }
    }
    
    func carpma(number1: String, number2: String){
        if let number1Int = Int(number1), let number2Int = Int(number2) {
            let result = number1Int * number2Int
            resultVM = String(result)
        }
    }
}
