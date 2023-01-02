//
//  ViewController.swift
//  HesapMak
//
//  Created by Furkan Yılmaz on 2.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    
    
    @IBOutlet weak var secondText: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sumClicked(_ sender: Any) {
        
        /* ÇÖZÜM1 FAKAT İDEAL DEĞİL!
        let firstNumber = Int(firstText.text!)! //ilk ünlem kesinlikle firsTexte değer gelecek demek
        let secondNumber = Int(firstText.text!)! //ikinci dıştaki ünlem ise geleni kesin int yap demek.
        
        let result = firstNumber + secondNumber
        
        resultLabel.text = String(result)*/
        
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
                
            } else {
                resultLabel.text = "Wrong Type"
            }
        }else{
            resultLabel.text = "Wrong Type"
        }
        
        
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
                
            } else {
                resultLabel.text = "Wrong Type"
            }
        }else{
            resultLabel.text = "Wrong Type"
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                let result = firstNumber * secondNumber
                resultLabel.text = String(result)
                
            } else {
                resultLabel.text = "Wrong Type"
            }
        }else{
            resultLabel.text = "Wrong Type"
        }
    }
    @IBAction func divideClicked(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                let result = firstNumber / secondNumber
                resultLabel.text = String(result)
                
            } else {
                resultLabel.text = "Wrong Type"
            }
        }else{
            resultLabel.text = "Wrong Type"
        }
    }
}

