//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var calulatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
    print("height: \(sender.value)")
        heightLabel.text = String(format: "%.2f m", sender.value)
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        print("weight:  \(sender.value)")
        weightLabel.text = String(format: "%.0f h", sender.value)
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calulatorBrain.calculateBMI(weight: weight, height: height)
        /*let resultPageVC = ResultViewController()

        resultPageVC.bmiValue = String(format: "%.1f", bmi)
        
        self.present(resultPageVC, animated: true, completion: nil) */
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calulatorBrain.getBMIValue()
        }
    }
    
}

