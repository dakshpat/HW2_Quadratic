//
//  ContentView.swift
//  Shared
//
//  Created by Daksh Patel on 1/28/22.
//

import SwiftUI

struct ContentView: View {
    
    //resulting values
    @State var Form1Sol1 = 0.0
    @State var Form1Sol2 = 0.0
    @State var Form2Sol1 = 0.0
    @State var Form2Sol2 = 0.0
    //initation an object of the class
    @ObservedObject var quadratic = Quadratic()
    
    
    
    var body: some View {
        VStack{
            Text("Ax^2 + Bx + C = 0")
                .padding(.top)
                .padding(.bottom, 0)
            
            HStack{
                Text("Enter A value here")
                TextField("Enter Radius", value: $quadratic.aValue, format: .number)
            }
            
            HStack{
                Text("Enter B value here")
                TextField("Enter Radius", value: $quadratic.bValue, format: .number)
            }
            
            HStack{
                Text("Enter C value here")
                TextField("Enter Radius", value: $quadratic.cValue, format: .number)
            }
            
            Group {
                Text("Form 1 Solution 1: \(Form1Sol1, specifier: "%.12f")")
                    .padding()

                Text("Form 1 Solution 2: \(Form1Sol2, specifier: "%.12f")")
                    .padding()

                Text("Form 2 Solution 1: \(Form2Sol1, specifier: "%.12f")")
                    .padding()

                Text("Form 2 Solution 2: \(Form2Sol2, specifier: "%.12f")")
                    .padding()
                
                
                Text("Most Precise: \(Form2Sol1, specifier: "%.12f")")
                    .padding()

                Text("Most Precise: \(Form2Sol2, specifier: "%.12f")")
                    .padding()
                
            }
            
//creating a button that calculates the diffrent forms 
            
            Button("Calculate"){
                self.Form1Sol1 = quadratic.quadraticForm1Sol1(aValue: quadratic.aValue, bValue: quadratic.bValue, cValue: quadratic.cValue)
                
                self.Form1Sol2 = quadratic.quadraticForm1Sol2(aValue: quadratic.aValue, bValue: quadratic.bValue, cValue: quadratic.cValue)
                
                self.Form2Sol1 = quadratic.quadraticForm2Sol1(aValue: quadratic.aValue, bValue: quadratic.bValue, cValue: quadratic.cValue)
                
                self.Form2Sol2 = quadratic.quadraticForm2Sol2(aValue: quadratic.aValue, bValue: quadratic.bValue, cValue: quadratic.cValue)
            }
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
