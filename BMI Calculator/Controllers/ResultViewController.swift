//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by pranit on 15/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var adviseLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View controller")
        bmiLabel.text = bmiValue

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
