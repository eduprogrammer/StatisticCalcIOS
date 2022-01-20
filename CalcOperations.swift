//
//  CalcOperations.swift
//  Statistic Calc
//
//  Created by Eduardo Programador on 7/16/21.
//  Copyright © 2021 Eduardo Programador. All rights reserved.
//

import Foundation
import UIKit

class CalcOperations {
    
    //declare
    
    //constructor
    init() {
        
    }
    
    //methods
    
    func addNumber(number n : String, current c: UITextField) {
        if c.text! == "0" {
            c.text! = n
        } else {
            c.text = c.text! + n
        }
    }
    
    func doOperation(field f : UITextField, signal s : String?) {
        
        let numbers = f.text
        
        let lastSignal = numbers?.substringFromIndex((numbers?.startIndex.advancedBy((numbers?.characters.count)! - 1))!)
        let pure = numbers?.substringToIndex((numbers?.startIndex.advancedBy((numbers?.characters.count)! - 1))!)
        
        if numbers?.containsString("+") == false && numbers?.containsString("-") == false && numbers?.containsString("*") == false && numbers?.containsString("/") == false {
            
            if lastSignal == "+" || lastSignal == "-" || lastSignal == "*" || lastSignal == "/" {
                
                f.text = pure! + lastSignal!
                
            } else {
                
                f.text = numbers! + s!
                
            }
        }
        
        
        
       
        
    }
    
    
}
