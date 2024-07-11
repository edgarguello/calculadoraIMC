//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Edgar Arguello on 7/11/24.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f",sender.value))m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.2f",sender.value))kg"
        
    }
    @IBAction func calcularPressed(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateIMC(heightValue: height, weightValue: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.imcValue = calculatorBrain.getIMCValue()
            destinationVC.color = calculatorBrain.getColor()    
            
        }
    }
}

