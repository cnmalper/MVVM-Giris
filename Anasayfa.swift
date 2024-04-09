//
//  ViewController.swift
//  MVVM-Giris
//
//  Created by Alper Canımoğlu on 7.04.2024.
//

import UIKit

class Anasayfa: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var number1Textfield: UITextField!
    @IBOutlet weak var number2Textfield: UITextField!
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = viewModel.resultVM.subscribe(onNext: { s in // dinleme
            self.resultLabel.text = s
        })
    }
    
    @IBAction func toplaButtonClicked(_ sender: Any) {
        if let number1 = number1Textfield.text, let number2 = number2Textfield.text {
            viewModel.topla(number1: number1, number2: number2) // (1) calistir
//            resultLabel.text = viewModel.resultVM // oku & rx swift ile gerek kalmadı
        }
    }
    
    @IBAction func carpButtonClicked(_ sender: Any) {
        if let number1 = number1Textfield.text, let number2 = number2Textfield.text {
            viewModel.carpma(number1: number1, number2: number2) // (1) calistir
//            resultLabel.text = viewModel.resultVM // oku & rx swift ile gerek kalmadı
        }
    }
}
