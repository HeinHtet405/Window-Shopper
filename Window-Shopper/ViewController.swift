//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Hein Htet on 9/1/17.
//  Copyright © 2017 Hein Htet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currencyTextField: CustomTextField!
    
    @IBOutlet weak var priceTextField: CustomTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var hourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))

        calBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        currencyTextField.inputAccessoryView = calBtn
        priceTextField.inputAccessoryView = calBtn
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
    }
    
    func calculate() {
        if let wageText = currencyTextField.text, let priceText = priceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                resultLabel.text = "\(Wage.getHour(forWage: wage, andPrice: price))"
            }
        }
    }


    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        currencyTextField.text = ""
        priceTextField.text = ""
    }

}

