//
//  calculator.swift
//  calculator
//
//  Created by Student on 3/11/17.
//  Copyright © 2017 Luke Lauerman. All rights reserved.
//

import Foundation

class Calculator{

    var Number1: Float = 0.0
    var Number2: Float = 0.0

    
    
    
    enum optype{
    case none
    case add
    case subtract
    case multiply
    case divide
    
    }
    var Operation = optype.none
    
    
    
    func clear(){
        Number1=0.0
        Number2=0.0
        Operation = optype.none
    }
    func Calculate()->Float{
      
        switch Operation{
        
        case .add:
            return  Number1 + Number2
        case .subtract:
            return  Number1 - Number2
        case .divide:
            if (Number1 > 0 && Number2 > 0){
                return  Number1 / Number2}else{return 0}
        case .multiply:
            return Number1 * Number2
        case .none:
            return 0.0
        
        
        }
        
        
        
        
    }
    



}