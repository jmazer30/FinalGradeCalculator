//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by  on 10/16/19.
//  Copyright © 2019 JordansEpicApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myTextField1: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    @IBOutlet weak var myTextField3: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    var Q1 = 0
    var Q2 = 0
    var desiredGrade = 0
    var x = 0
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButton(_ sender: UIButton)
    {
        
        self.view.endEditing(true)
        let Q1 = Double(myTextField1.text!) ?? 0
        let Q2 = Double(myTextField2.text!) ?? 0
        let desiredGrade = Double(myTextField3.text!) ?? 0
        let x = (desiredGrade - 0.4 * Q1 - 0.4 * Q2) / 0.2
        myLabel2.text = "\(x)"
        
        if x < 100
        {
            self.view.backgroundColor = UIColor.green
        }
        else
        {
            self.view.backgroundColor = UIColor.red
        }
        
        if x > 100
        {
            myLabel.text = "SEE YOUR TEACHER!!"
        }
        else
        {
            myLabel.text = "Final Grade Calculator"
        }
        
    }
    
}

