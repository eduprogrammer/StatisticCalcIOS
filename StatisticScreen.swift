//
//  StatisticScreen.swift
//  Statistic Calc
//
//  Created by Eduardo Programador on 7/27/21.
//  Copyright © 2021 Eduardo Programador. All rights reserved.
//

import UIKit

class StatisticScreen : UIViewController {
    //declare
    @IBOutlet var editNumber:UILabel?
    @IBOutlet var labelRes:UILabel?
    
    
    override func viewDidLoad() {
        
        //initializes
        
        //call methods
        
    }
    
    //other methods
    @IBAction func addNumber(sender : UIButton) {
        
        let option = sender.tag
        
        switch option {
        case 1:
            agreggate(number: "1")
            break
            
        case 2:
            agreggate(number: "2")
            break
            
        case 3:
            agreggate(number: "3")
            break
            
        case 4:
            agreggate(number: "4")
            break
            
        case 5:
            agreggate(number: "5")
            break
            
        case 6:
            agreggate(number: "6")
            break
            
        case 7:
            agreggate(number: "7")
            break
            
        case 8:
            agreggate(number: "8")
            break
            
        case 9:
            agreggate(number: "9")
            break
            
        case 10:
            agreggate(number: "0")
            break
            
        default:
            break
            
        }
        
        
    }
    
    func agreggate(number nu : String?) -> Void {
        var cur = editNumber?.text
        cur = cur! + nu!
        editNumber?.text = cur
    }
    
    @IBAction func addSeparator(sender : UIButton) {
        
        
        
    }
    
    @IBAction func addDot(sender : UIButton) {
        agreggate(number: ".")
    }
    
    @IBAction func eraseScreen(sender : UIButton) {
        
        editNumber?.text = "0"
    }
    
    func calculateStatistics() -> Void {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
}
