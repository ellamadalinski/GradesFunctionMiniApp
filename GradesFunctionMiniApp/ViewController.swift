//
//  ViewController.swift
//  GradesFunctionMiniApp
//
//  Created by Ella Madalinski on 9/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pointsEarnedTextFieldOutlet: UITextField!
    @IBOutlet weak var pointsWorthTextFieldOutlet: UITextField!
    @IBOutlet weak var passLabelOutlet: UILabel!
    @IBOutlet weak var percentageLabelOutlet: UILabel!
    @IBOutlet weak var gradeLabelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func pass(_ sender: UIButton) {
        
        if let ptsEarned = pointsEarnedTextFieldOutlet.text{
            if let pointsEarned = Double(ptsEarned){
                if let ptsWorth = pointsWorthTextFieldOutlet.text{
                    if let pointsWorth = Double(ptsWorth){
                        passLabelOutlet.text =  pass(pointsEarned, pointsWorth)
                    }
                    else{
                        passLabelOutlet.text = "Points worth not a valid number"
                    }
                }
                else{
                    passLabelOutlet.text = "Points worth not a valid number"
                }
            }
            else{
                passLabelOutlet.text = "Points earned not a valid number"
            }
        }
        else{
            passLabelOutlet.text = "Points earned not a valid number"
        }
        
        pointsEarnedTextFieldOutlet.resignFirstResponder()
        pointsWorthTextFieldOutlet.resignFirstResponder()
        
    }
    
    @IBAction func calcPercentage(_ sender: UIButton) {
        
        if let ptsEarned = pointsEarnedTextFieldOutlet.text{
            if let pointsEarned = Double(ptsEarned){
                if let ptsWorth = pointsWorthTextFieldOutlet.text{
                    if let pointsWorth = Double(ptsWorth){
                        percentageLabelOutlet.text =  "\(calculatePercentage(pointsEarned, pointsWorth))%"
                    }
                    else{
                        percentageLabelOutlet.text = "Points worth not a valid number"
                    }
                }
                else{
                    percentageLabelOutlet.text = "Points worth not a valid number"
                }
            }
            else{
                percentageLabelOutlet.text = "Points earned not a valid number"
            }
        }
        else{
            percentageLabelOutlet.text = "Points earned not a valid number"
        }
        
        pointsEarnedTextFieldOutlet.resignFirstResponder()
        pointsWorthTextFieldOutlet.resignFirstResponder()
        
    }
    
    @IBAction func calcGrade(_ sender: UIButton) {
        if let ptsEarned = pointsEarnedTextFieldOutlet.text{
            if let pointsEarned = Double(ptsEarned){
                if let ptsWorth = pointsWorthTextFieldOutlet.text{
                    if let pointsWorth = Double(ptsWorth){
                        gradeLabelOutlet.text = "\(calculateGrade(pointsEarned,pointsWorth))"
                    }
                    else{
                        gradeLabelOutlet.text = "Points worth not a valid number"
                    }
                }
                else{
                    gradeLabelOutlet.text = "Points worth not a valid number"
                }
            }
            else{
                gradeLabelOutlet.text = "Points earned not a valid number"
            }
        }
        else{
            gradeLabelOutlet.text = "Points earned not a valid number"
        }
        
        pointsEarnedTextFieldOutlet.resignFirstResponder()
        pointsWorthTextFieldOutlet.resignFirstResponder()
        
    }
    
    
    
    
    
    
    func calculatePercentage(_ pointsEarned: Double, _ pointsWorth: Double)-> String {
        let percentage = 100*(pointsEarned/pointsWorth)
        return String(percentage)
    }
    
    func calculateGrade(_ pointsEarned: Double, _ pointsWorth: Double)-> String {
        let percentage = 100*(pointsEarned/pointsWorth)
        
        if(percentage>=90){
            return "A"
        }
        else if(percentage>=80){
            return "B"
        }
        else if(percentage>=70){
            return "C"
        }
        else if(percentage>=60){
            return "D"
        }
        else{
            return "F"
        }

    }
    
    func pass(_ pointsEarned: Double, _ pointsWorth: Double)-> String{
        let percentage = 100*(pointsEarned/pointsWorth)
        
        if(percentage>=70){
            return "You passed!"
        }
        else{
            return "You did not pass."
        }
    }
    
}

