//
//  InitScreen.swift
//  Statistic Calc
//
//  Created by Eduardo Programador on 7/14/21.
//  Copyright © 2021 Eduardo Programador. All rights reserved.
//

import UIKit

class InitScreen : UIViewController {
    //declare
    @IBOutlet weak var editNumber: UITextField!
    @IBOutlet weak var labelMode: UILabel!
    var current = "0"
    var op : CalcOperations?
    var calcMode = false
    
    
    override func viewDidLoad() {
        
        //initializes
        editNumber.text = current
        
        
        //call methods
        op = CalcOperations()
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    
    @IBAction func setNumber(sender: UIButton) {
        
        switch sender.tag {
            case 1:
                op?.addNumber(number: "1", current: editNumber)
            break
            
        case 2:
            op?.addNumber(number: "2", current: editNumber)
            break
            
        case 3:
            op?.addNumber(number: "3", current: editNumber)
            break
            
        case 4:
            op?.addNumber(number: "4", current: editNumber)
            break
            
        case 5:
            op?.addNumber(number: "5", current: editNumber)
            break
            
        case 6:
            op?.addNumber(number: "6", current: editNumber)
            break
            
        case 7:
            op?.addNumber(number: "7", current: editNumber)
            break
            
        case 8:
            op?.addNumber(number: "8", current: editNumber)
            break
            
        case 9:
            op?.addNumber(number: "9", current: editNumber)
            break
            
        case 10:
            op?.addNumber(number: "0", current: editNumber)
            break
            
        case 11:
            let expression = editNumber.text
            
            var numbers = [String]()
            calcMode = false
            var theOne : String?
            var theTwo : String?
            
            var mode = 0
            
            if expression?.containsString("+") == true {
                numbers = (expression?.componentsSeparatedByString("+"))!
                mode = 0
            } else if expression?.containsString("-") == true {
                numbers = (expression?.componentsSeparatedByString("-"))!
                mode = 1
            } else if expression?.containsString("*") == true {
                numbers = (expression?.componentsSeparatedByString("*"))!
                mode = 2
            } else if expression?.containsString("/") == true {
                numbers = (expression?.componentsSeparatedByString("/"))!
                mode = 3
            }
            
            theOne = numbers[0]
            theTwo = numbers[1]
            
            switch mode {
            
            case 0:
                editNumber.text = String(Double(theOne!)! + Double(theTwo!)!)
                break
                
            case 1:
                editNumber.text = String(Double(theOne!)! - Double(theTwo!)!)
                break
                
            case 2:
                editNumber.text = String(Double(theOne!)! * Double(theTwo!)!)
                break
                
            case 3:
                editNumber.text = String(Double(Double(theOne!)! / Double(theTwo!)!))
                break
                
            default:
                break
                
                
                
            }
            
            
            
            
            
            
            break
            
        case 12:
            calcMode = true
            op?.doOperation(field: editNumber, signal: "+")
            break
            
        case 13:
            calcMode = true
            op?.doOperation(field: editNumber, signal: "-")
            break
            
        case 14:
            calcMode = true
            op?.doOperation(field: editNumber, signal: "*")
            break
            
        case 15:
            calcMode = true
            op?.doOperation(field: editNumber, signal: "/")
            break
            
        case 16:
            
            let cur = editNumber.text
            var nArray = [String]()
            var one : String?
            var two : String?
            var signal : String?
            
            if calcMode == true {
                
                if cur?.containsString("+") == true {
                    nArray = (cur?.componentsSeparatedByString("+"))!
                    signal = "+"
                } else if cur?.containsString("-") == true {
                    nArray = (cur?.componentsSeparatedByString("-"))!
                    signal = "-"
                } else if cur?.containsString("*") == true {
                    nArray = (cur?.componentsSeparatedByString("*"))!
                    signal = "*"
                } else if cur?.containsString("/") == true {
                    nArray = (cur?.componentsSeparatedByString("/"))!
                    signal = "/"
                }
                
                one = nArray[0]
                two = nArray[1]
                
                var twoInv : Int = Int(two!)!
                twoInv = -twoInv
                
                editNumber.text = one! + " " + signal! + " " + String(twoInv)
                
            } else {
                
                if cur != "0" {
                    if cur?.substringToIndex((cur?.startIndex.advancedBy(1))!) == "-" {
                        
                        editNumber.text = cur?.substringFromIndex((cur?.startIndex.advancedBy(1))!)
                        
                    } else {
                        editNumber.text = "-" + cur!
                    }
                }
            }
            
            
            
            
            break
            
            
        case 30:
            
            var actual = editNumber.text
            editNumber.text = actual! + "."
            
            break
            
        default:
            break
            
            
        }
        
    }
    
    
    @IBAction func eraseContent(sender: UIButton) {
        editNumber.text = "0"
        calcMode = false
    }
    
    
}
