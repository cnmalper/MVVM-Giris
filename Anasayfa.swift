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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "0"
    }
    
    @IBAction func toplaButtonClicked(_ sender: Any) {
        if let number1 = number1Textfield.text, let number2 = number2Textfield.text {
            if let number1Int = Int(number1), let number2Int = Int(number2) {
                let result = number1Int + number2Int
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func carpButtonClicked(_ sender: Any) {
        if let number1 = number1Textfield.text, let number2 = number2Textfield.text {
            if let number1Int = Int(number1), let number2Int = Int(number2) {
                let result = number1Int * number2Int
                resultLabel.text = String(result)
            }
        }
    }
}
