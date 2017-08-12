//
//  ViewController.swift
//  MyCalculator
//
//  Created by Meric BAL on 8/10/17.
//  Copyright © 2017 Bal Software Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0;
    var firstNumber:Double = 0;
    var calculating = false;
    var operation = 0;
    
    @IBOutlet weak var label:  UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if calculating == true
        {
            label.text = String(sender.tag)
            numberOnScreen = Double(label.text!)!
            calculating = false
        }
        else
        {
            label.text = label.text! + String(sender.tag)
            numberOnScreen = Double(label.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 10 && sender.tag != 11
        {
            firstNumber = Double(label.text!)!
            
            if sender.tag == 12 // divide
            {   label1.text = String(firstNumber)
                label.text = "/"
                label2.text = label.text }
                
            else if sender.tag == 13 // multiply
            {   label1.text = String(firstNumber)
                label.text = "x"
                label2.text = label.text }
                
            else if sender.tag == 14 // add
            {   label1.text = String(firstNumber)
                label.text = "+"
                label2.text = label.text }
                
            else if sender.tag == 15 // minus 
            {   label1.text = String(firstNumber)
                label.text = "-"
                label2.text = label.text }
            
            operation = sender.tag
            calculating = true
        }
        else if sender.tag == 11 // equal
        {
            if      operation == 12
            {   label3.text = String(numberOnScreen)
                label.text = String(firstNumber / numberOnScreen) }
            
            else if operation == 13
            {   label3.text = String(numberOnScreen)
                label.text = String(firstNumber * numberOnScreen) }
            
            else if operation == 14
            {   label3.text = String(numberOnScreen)
                label.text = String(firstNumber + numberOnScreen) }
            
            else if operation == 15
            {   label3.text = String(numberOnScreen)
                label.text = String(firstNumber - numberOnScreen) }
        }
        else if sender.tag == 10 // clear
        {
            label.text = ""
            label1.text = ""
            label2.text = ""
            label3.text = ""
            firstNumber = 0
            numberOnScreen = 0
            operation = 0
        }
        // else if sender.tag == 20 // clear entry
        // {
            //label.text = ""
            //numberOnScreen = 0
        //}
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
