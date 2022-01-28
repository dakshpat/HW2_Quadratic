//
//  Quadratic.swift
//  HW2_Quadratic
//
//  Created by Daksh Patel on 1/28/22.
//

import Foundation
import SwiftUI

class Quadratic: NSObject, ObservableObject {
    
    @Published var aValue = 0.0
    @Published var bValue = 0.0
    @Published var cValue = 0.0
    
    override init (){
        self.aValue = 3
        self.bValue = 5
        self.cValue = -2
    }
        
    func quadraticForm1Sol1(aValue: Double, bValue: Double, cValue:Double)-> Double{
        let x = (-bValue + sqrt(pow(bValue,2) - (4*aValue*cValue)))/(2*aValue)
        
        return x
    }
    
    func quadraticForm1Sol2(aValue: Double, bValue: Double, cValue:Double)-> Double{
        let x = (-bValue - sqrt(pow(bValue,2) - (4*aValue*cValue)))/(2*aValue)
        
        return x
    }
    
    func quadraticForm2Sol1(aValue: Double, bValue: Double, cValue:Double)-> Double{
        let x = (-2*cValue)/(bValue + sqrt(pow(bValue,2) - (4*aValue*cValue)))
        
        return x
    }
    
    func quadraticForm2Sol2(aValue: Double, bValue: Double, cValue:Double)-> Double{
        let x = (-2*cValue)/(bValue - sqrt(pow(bValue,2) - (4*aValue*cValue)))
        
        return x
    }
    
    
}
