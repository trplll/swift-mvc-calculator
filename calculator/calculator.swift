//
//  calculator.swift
//  calculator
//
//  Created by Student on 3/11/17.
//  Copyright © 2017 Luke Lauerman. All rights reserved.
//

import Foundation

class Calculator{
    //declare and initialize Calculator properties
    var Number1: Float = 0.0
    var Number2: Float = 0.0
    // I made Operation variable an enum "optype" instead of a string type where each optype represents one of the calculators available operations
    var Operation = optype.none
    //aforementioned enum optype
    enum optype{
    case none
    case add
    case subtract
    case multiply
    case divide
    }
    
    //calculator clear function reassigns number properties to zero values and sets Operation to optype.none
    
    func clear() ->Void{
        Number1=0.0
        Number2=0.0
        Operation = optype.none
    }
    
    func Calculate()->Float{
      
        //calculate function behaves differenly based on the current Operation.optype setting.
        switch Operation{
        case .add:
            return  Number1 + Number2
        case .subtract:
            return  Number1 - Number2
        case .divide:
            //extra logic to prevent divide by zero crash
            if (Number1 > 0 && Number2 > 0){
                return  Number1 / Number2
            }else{return 0}
        case .multiply:
            return Number1 * Number2
        case .none:
            return 0.0
        
        
        }
        
        
        
        
    }
    



}