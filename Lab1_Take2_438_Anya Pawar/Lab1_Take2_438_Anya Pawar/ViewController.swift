//
//  ViewController.swift
//  Lab1_Take2_438_Anya Pawar
//
//  Created by Anya Pawar on 9/8/19.
//  Copyright © 2019 Anya Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var OriginalPrice: UITextField!
    @IBOutlet var Discount: UITextField!
    @IBOutlet var Tax: UITextField!
    @IBOutlet var Final: UITextField!
    
    var OG: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //when typing begins, the text field becomes blank
    @IBAction func beginOriginalPrice(_ sender: Any) {
        OriginalPrice.text = ""
        OriginalPrice.textColor = UIColor.black
    }
    
    @IBAction func beginDiscount(_ sender: Any) {
        Discount.text = ""
        Discount.textColor = UIColor.black
    }
    
    @IBAction func beginTax(_ sender: Any) {
        Tax.text = ""
        Tax.textColor = UIColor.black
    }
    
    @IBAction func changedOriginalPrice(_ sender: Any) {
        DisplayUpdate()
    
    }
    
    @IBAction func changedDiscount(_ sender: Any) {
        DisplayUpdate()
    }
    
    @IBAction func changedTax(_ sender: Any) {
        DisplayUpdate()
    }
    

    @IBAction func stepperOriginalPrice(_ sender: UIStepper) {
        OriginalPrice.text = String(sender.value)
        print(String(sender.value))
    }
    
//    @IBAction func stepperDiscount(_ sender: Any) {
//
//    }
//
//    @IBAction func stepperTax(_ sender: Any) {
//
//    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        OriginalPrice.text = "0.00"
        Discount.text = "0.00"
        Tax.text = "0.00"
        Final.text = "0.00"
    }
    
    func DisplayUpdate(){
        
        
       let inputedOriginalPrice = Double(OriginalPrice.text ?? "") ?? 0.00
       let inputedDiscountPrice = Double(Discount.text ?? "") ?? 0.00
       let inputedTaxPrice = Double(Tax.text ?? "") ?? 0.00
       
       print(inputedOriginalPrice)
       print(inputedDiscountPrice)
       print(inputedTaxPrice)
       
        
        let dp = inputedOriginalPrice - (inputedOriginalPrice * (inputedDiscountPrice/100))
        let fp = dp + ((inputedTaxPrice/100) * dp)
        
        print(dp)
        print(fp)
        
                if fp < 0 {
                    Final.text = "input numbers"
                }
                else {
                    Final.text="$\(String(format: "%.2f", fp))"
                }
        
    }
    
}
        
        
        
        // print(inputOriginalPrice)
    
        //let discountValue = Double(round(inputDiscountPrice/100))
        //print(inputDiscountPrice)
//        let a = Double(1 - (inputDiscountPrice / 100))
//        print(a)
//        let b = 1 + (inputTaxPrice / 100)
//        let p = inputOriginalPrice * a * b

//        if p < 0 {
//            Final.text = ""
//        }
//        else {
//            Final.text="$\(String(format: "%.2f", p))"
//        }




//        let inputDiscount:String? = Discount.text
//        let inputTax:String? = Tax.text
//0
//        var valueOriginalPrice : Double = 0.0
//        var valueDiscount : Double = 0.0
//        var valueTax : Double = 0.0
//
//        //check with if statements
//        if Double(inputOriginalPrice)!= nil{
//
//        }
