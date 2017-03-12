//
//  ViewController.swift
//  calculator
//
//  Created by Student on 1/30/17.
//  Copyright © 2017 Luke Lauerman. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    //create instance of calculator class
    var calc = Calculator()
    
    //this variable is used as a flag that helps determine whether the user is executing a new operation or if they want to repeate the same calculation using the result of the first calculation as number1 and the same value used in prior calculation for number2
    var repeatCalc:Bool = false
    
    //Prepare variable used to communicate with the Storyboard text input box
    @IBOutlet weak var inputText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Action methods for operator buttons on storyboard I used and enum for the operation selection and switch instead of a string type
    
    @IBAction func add() {        calc.Operation = Calculator.optype.add
        cleanStoreNum1()
    }
    @IBAction func sub() {
        calc.Operation = Calculator.optype.subtract
        cleanStoreNum1()
    }
    @IBAction func divide() {
        calc.Operation = Calculator.optype.divide
        cleanStoreNum1()
    }
    @IBAction func multiply() {
        calc.Operation = Calculator.optype.multiply
        cleanStoreNum1()
    }
    
    //This function called by each of the operator methods to store first var in calc object and sets the repeatCalc variable to false because if user selects operation it is a new calculation
    func cleanStoreNum1()->Void{
        if (Float(inputText.text!)! > 0){
            calc.Number1 = Float(inputText.text!)!
            inputText.text=""
            repeatCalc=false;
        }

    }
    
    @IBAction func equal() {
        //If repeatCalc false, then number two needs to be set in calc object and then calculate method results need to be returned to inputText Field
        if (!repeatCalc){
        calc.Number2 = Float(inputText.text!)!
        inputText.text! = String(calc.Calculate())
        repeatCalc=true
        }else{
        //If this is a repeat calc, the results of the last calculation can be pulled from the inputText field and then stored as the first number. the second number remains the same to repeat the same operation on the results as the last calculation.
        calc.Number1 = Float(inputText.text!)!
        inputText.text! = String(calc.Calculate())
        }
           }
    
    @IBAction func clear() {
        calc.clear()
        repeatCalc=true
        inputText.text=""
    }

    


    //remove last character action method
    @IBAction func remLastEntry() {
    inputText.text!.removeAtIndex(inputText.text!.endIndex.predecessor())
    }
    
    //decimal point button action
    @IBAction func decPoint() {
        if inputText.text!.rangeOfString(".") == nil{
        inputText.text!+="."
        }
    }
    
    //Number button action methods append respective number to the user input field
    @IBAction func num0() {
        inputText.text!+="0"
    }
    @IBAction func num1() {
        inputText.text!+="1"
    }
    @IBAction func num2() {
        inputText.text!+="2"
    }
    @IBAction func num3() {
        inputText.text!+="3"
    }
    @IBAction func num4() {
        inputText.text!+="4"
    }
    @IBAction func num5() {
        inputText.text!+="5"
    }
    @IBAction func num6() {
        inputText.text!+="6"
    }
    @IBAction func num7() {
        inputText.text!+="7"
    }
    @IBAction func num8() {
        inputText.text!+="8"
    }
    @IBAction func num9() {
        inputText.text!+="9"
    }
    
    
}

