//
//  ViewController.swift
//  calculator
//
//  Created by Hadis amini on 1/4/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnscrean : Double = 0;
    var previousNumber : Double = 0;
    var performingMath = false
    var opration = 0
    @IBOutlet weak var lable: UILabel!
    @IBAction func numbers(_ sender: UIButton)
    {
        if performingMath == true{
            lable.text = String(sender.tag - 1)
            numberOnscrean = Double(lable.text!)!
            performingMath = false
        }
        else{
            lable.text = lable.text! + String(sender.tag - 1)
            numberOnscrean = Double(lable.text!)!
        }
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if lable.text != "" && sender.tag != 11 && sender.tag != 17{
            previousNumber = Double(lable.text!)!
            if sender.tag == 12 //cos
            {
                lable.text = "cos(\(previousNumber)"
            }
            else if sender.tag == 13{//divide
                
            }
            else if sender.tag == 14{//multiply
                
            }
            else if sender.tag == 15{//minus
                
            }
            else if sender.tag == 16{//plus
                lable.text = "+"
                
            }
            else if sender.tag == 18{//sin
                lable.text = "sin(\(previousNumber)"
            }
            opration = sender.tag
            performingMath = true;
        }
        else if sender.tag == 17 {
            
            if opration == 12{
                numberOnscrean = cos(previousNumber)
                lable.text = String(numberOnscrean)
            }
            else if opration == 18{
                numberOnscrean = sin(previousNumber)
                lable.text = String(numberOnscrean)
            }
            else if opration == 13{
                lable.text = String(previousNumber / numberOnscrean)
            }
            else if opration == 14{
                lable.text = String(previousNumber * numberOnscrean)
            }
            else if opration == 15{
                lable.text = String(previousNumber - numberOnscrean)
            }
            else if opration == 16{
                lable.text = String(previousNumber + numberOnscrean)
            }
            
        }
        else if sender.tag == 11 {
            lable.text = ""
            previousNumber = 0;
            numberOnscrean = 0;
            opration = 0;
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

