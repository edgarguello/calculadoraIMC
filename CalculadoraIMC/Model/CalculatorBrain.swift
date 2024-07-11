//
//  CalculatorBrain.swift
//  CalculadoraIMC
//
//  Created by Edgar Arguello on 7/11/24.
//

import Foundation
import UIKit

struct CalculatorBrain {

    var imc : IMC?
    
    mutating func calculateIMC(heightValue : Float , weightValue: Float){
        let imcValue = weightValue / (heightValue * heightValue)
        
        if imcValue < 18.5 {
            imc = IMC(value: imcValue, advice: "Te falta puchero!", color: UIColor(resource: ColorResource(name: "imc_blue", bundle: .main)))
        }else if imcValue < 24.9{
            imc = IMC(value: imcValue, advice: "IMC ideal!", color: UIColor(resource: ColorResource(name: "imc_green", bundle: .main)))
        }else{
            imc = IMC(value: imcValue, advice: "Deberias comer mas sano!", color: UIColor(resource: ColorResource(name: "imc_red", bundle: .main)))
        }
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? "ERROR"
    }
    
    func getIMCValue() -> String{
        return String(format: "%.1f", imc?.value ?? 0.0)
    }
    
    func getColor() -> UIColor {
        return imc?.color ?? UIColor.white
    }
}
