//
//  ViewController.swift
//  Calculator
//
//  Created by Ramesh Vishnoi on 03/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorResult: UILabel!
    @IBOutlet weak var calculatorWorking: UILabel!
    var working:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func equalTap(_ sender: Any) {
        let expression = NSExpression(format: working)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResult.text = resultString
    }
    func formatResult(result:Double)-> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }
    @IBAction func allClearTap(_ sender: Any) {
        calculatorWorking.text = ""
        calculatorResult.text = ""
        working = ""
    }
    func addToWorking(value:String)
    {
        working += value
        calculatorWorking.text = working
    }
    
    @IBAction func backTap(_ sender: Any) {
        if(!working.isEmpty)
        {
            working.removeLast()
            calculatorWorking.text = working
        }
    }
    @IBAction func percentTap(_ sender: Any) {
        addToWorking(value: "%")
    }
    
    
    @IBAction func divideTap(_ sender: Any) {
        addToWorking(value: "/")
    }
    
    @IBAction func multiplyTap(_ sender: Any) {
        addToWorking(value: "*")
    }
    @IBAction func subtractTap(_ sender: Any) {
        addToWorking(value: "-")
    }
    
    @IBAction func addTap(_ sender: Any) {
        addToWorking(value: "+")
    }
    
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorking(value: "9")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToWorking(value: "8")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorking(value: "7")
    }
    
    
    @IBAction func sixTap(_ sender: Any) {
        addToWorking(value: "6")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorking(value: "5")
    }
    @IBAction func fourTap(_ sender: Any) {
        addToWorking(value: "4")
    }
    @IBAction func threeTap(_ sender: Any) {
        addToWorking(value: "3")
    }
    @IBAction func twoTap(_ sender: Any) {
        addToWorking(value: "2")
    }
    @IBAction func oneTap(_ sender: Any) {
        addToWorking(value: "1")
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorking(value: "0")
    }
    
    @IBAction func decimalTap(_ sender: Any) {
        addToWorking(value: ".")
    }
}

