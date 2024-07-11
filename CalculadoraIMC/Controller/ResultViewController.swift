//
//  ResultViewController.swift
//  CalculadoraIMC
//
//  Created by Edgar Arguello on 7/11/24.
//

import Foundation
import UIKit

class ResultViewController : UIViewController{

    @IBOutlet weak var imcValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    var imcValue : String?
    var advice : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imcValueLabel.text = imcValue
        adviceLabel.text = advice
        view.backgroundColor = color
        print(color.debugDescription)
        
    }
    @IBAction func recalcularPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
