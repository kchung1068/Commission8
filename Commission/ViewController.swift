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
    let basePay:Double = 500
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        
    }


    @IBAction func calculateOnTapped(_ sender: UIButton)
    {
        getInput()
        
    }
    func getInput(){
        if let data = commissionPayTextField.text, let commissionPay = Double(data){
            print(("everything is fine"))
        } else {
            print("error occured")
            
        }
        
        
    }
    
}

