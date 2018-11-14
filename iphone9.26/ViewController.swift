//
//  ViewController.swift
//  20161104611
//
//  Created by s20161104602 on 2018/9/28.
//  Copyright © 2018年 s20161104602. All rights reserved.
//

    import UIKit
    var result_1 = " "
    var result_2 = " "
    //var result_3 = ""
    var  m = 0
    class ViewController: UIViewController{
    @IBOutlet weak var result:  UITextField!
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    var number = 0
    var judge  = 0
    var add    = 0
    var re     = 0
    @IBAction func number1(_ sender: Any) {
        
        if re == 1
        {
            result.text = "1"
        }
        else
        {
            result.text = result.text! + "1"
        }
    }
    
    @IBAction func number2(_ sender: Any)
    {
        
        if re == 1
        {
            result.text = "2"
        }
        else
        {
            result.text = result.text! + "2"
        }
    }
    @IBAction func number3(_ sender: Any)
    {
        
        if re == 1
        {
            result.text = "3"
        }
        else
        {
            
            result.text = result.text! + "3"
        }
    }
    @IBAction func number4(_ sender: Any)
    {
        
        if re == 1
        {
            result.text = "4"
        }
        else
        {
            result.text = result.text! + "4"
        }
    }
    @IBAction func number5(_ sender: Any)
    {
        if re == 1
        {
            result.text = "5"
        }
        else
        {
            result.text = result.text! + "5"
        }
    }
    @IBAction func number6(_ sender: Any) {
        
        if re == 1
        {
            result.text = "6"
        }
        else
        {
            result.text = result.text! + "6"
        }
    }
    @IBAction func number7(_ sender: Any)
    {
        if re == 1
        {
            result.text = "7"
        }
        else
        {
            result.text = result.text! + "7"
        }
    }
    @IBAction func number8(_ sender: Any)
    {
        if re == 1
        {
            result.text = "8"
        }
        else
        {
            result.text = result.text! + "8"
        }
    }
    @IBAction func number9(_ sender: Any)
    {
        if re == 1
        {
            result.text = "9"
        }
        else
        {
            result.text = result.text! + "9"
        }
    }
    @IBAction func number0(_ sender: Any)
    {
        if re == 1
        {
            result.text = "0"
        }
        else
        {
            result.text = result.text! + "0"
        }
    }
    @IBAction func dot(_ sender: Any)
    {
        if(m == 0)
        {
        result.text = result.text! + "."
       m = 1
        }
        else{
          result.text = result.text! + ""
        }
        judge = 1
        
    }
    
    @IBAction func clear(_ sender: Any)
    {
        result.text = ""
        re = 0
        add = 0
    }
    @IBAction func minus(_ sender: Any)
    {   m = 0
        if add == 1{
            let a = Double(result_1)!
            let b = Double(result.text!)!
            let c = a - b
            result_1 = String(c)
            result.text = ""
            number = 1
            re = 1
        }
        else
        {
            if  result.text == ""{
                result.text = "0"
            }
            else
            {
                let x = Double(result.text!)!
                result_1 = String(x)
                result.text = ""
                number = 1
                re = 0
                add = 1
            }
            
        }
        
    }
    
    @IBAction func plus(_ sender: Any)
    {
        m = 0
        if add == 1
        {
            
            let a = Double(result_1)!
            
            let b = Double(result.text!)!
            
            let c = a + b
            
            result_1 = String(c)
            
            result.text = ""
            
            number = 2
            
            re = 1
            
        }
        else
        {
            
            if result.text == ""{
                
                result.text = "0"
                
            }
                
            else
                
            {
                
                
                let x = Double(result.text!)!
                
                result_1 = String(x)
                
                result.text = ""
                
                number = 2
                
                re = 0
                add = 1
            }
            
        }
        
    }
    
    @IBAction func multiply(_ sender: Any)
    {
        m = 0
        if add == 1
        {
            
            let a = Double(result_1)!
            
            let b = Double(result.text!)!
            
            let c = a * b
            
            result_1 = String(c)
            
            result.text = ""
            
            number = 3
            
            re = 1
            
        }
        else
        {
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let x = Double(result.text!)!
                
                result_1 = String(x)
                
                result.text = ""
                
                number = 3
                
                re = 0
                
                add = 1
                
            }
            
        }
        
    }
    
    @IBAction func divide(_ sender: Any)
    {
        m = 0
        if add == 1{
            
            let a = Double(result_1)!
            
            let b = Double(result.text!)!
            
            let c = a / b
            
            result_1 = String(c)
            
            result.text = ""
            
            number = 4
            
            re = 1
            
        }
        else
        {
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let y = Double(result.text!)!
                
                result_1 = String(y)
                
                result.text = ""
                
                number = 4
                
                re = 0
                
                add = 1
                
            }
            
        }
        
    }
    
    
    
    @IBAction func equal(_ sender: Any)
    {
        
        var d:Double
        
        var c:Double
        let x=Double(result_1)!
        
        c = (result.text! as NSString).doubleValue
        
        if number == 1 {
            
            d = x - c
            
        }else if number == 2 {
            
            d = x + c
            
        }else if number == 3 {
            d = x * c
        }else if number == 4 {
            d = x / (c)
        }else {
            d = 1000
        }
       
        if judge == 1
        {
            result.text = String(format:"%lf", d)
        
            while (result.text?.last == "0")
            {
                 result.text?.removeLast()
            }
        }
        else
        {
              result.text = String(format:"%f", d)
            
            while (result.text?.last == "0")
            {
                result.text?.removeLast()
            }
                if(result.text?.last == ".")
            {
                result.text?.removeLast()
            }
        }
        re = 1
        judge = 0
        add = 0
        m = 0
    }
}

    
    
    
