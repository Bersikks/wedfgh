//
//  ViewController.swift
//  calc
//
//  Created by Гость on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonAC: UIButton!
    
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var numberOne = ""
    var numberTwo = ""
    var operand = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonAC.layer.cornerRadius = 36
        buttonZero.layer.cornerRadius = 36
        
    }

    @IBAction func inputNumber(_ sender: UIButton) {
    
    if operand.isEmpty {
        numberOne = numberOne +
            (sender.titleLabel?.text)!
        resultLabel.text = numberOne
    }
        else
        {
            numberTwo = numberTwo +
                (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
       
        }
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as!
            String
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        numberTwo = ""
        numberOne = ""
        operand = ""
        resultLabel.text = "0"
    }
    
    @IBAction func resultAction(_ sender: UIButton) {
        
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double (numberOne)! /
                Double(numberTwo)!
        case "+":
                result = Double (numberOne)! +
            Double(numberTwo)!
        case "-":
                result = Double (numberOne)! -
            Double(numberTwo)!
        case "*":
                result = Double (numberOne)! *
            Double(numberTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0)
            == 0.0 {
            resultLabel.text = String(Int(result))
            
        }
        else
        {
            resultLabel.text = String(result)
        }
        }
    
    }
    





