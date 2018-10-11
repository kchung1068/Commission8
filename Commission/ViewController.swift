//
//  ViewController.swift
//  Commission
//
//  Created by Kyle Chung on 10/8/18.
//  Copyright © 2018 Kyle Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var totalPayLabel: UILabel!
    @IBOutlet var commissionPayTextField: UITextField!
    @IBOutlet var spareLabel: UILabel!
    let basePay:Double = 500
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }


    @IBAction func calculateOnTapped(_ sender: UIButton)
    {
       let comPay = getInput()
        let totalPay = comPay + Double(basePay)
        let formattedPay = String(format: "%.2f", totalPay)
        totalPayLabel.text = "Total Pay = $\(formattedPay)"
        
        //comPay came back as a double
        //Mr.Brown's set up had basePay as a Int, therefore it didnt work
        
    }
    func getInput() -> Double
    {
        if let data = commissionPayTextField.text, let commissionPay = Double(data){
            spareLabel.text = "Everything is fine"
            return commissionPay
        } else {
             spareLabel.text = "Error occured"
          return 0
        }
        
        
    }
    
}

