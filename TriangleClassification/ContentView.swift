//
//  ContentView.swift
//  TriangleClassification
//
//  Created by Patrick Boren on 2021-12-11.
//

import SwiftUI

struct ContentView: View {
    
    @State var angle1String: String = ""
    var Angle1: Double? {
        guard let Angle1 = Double(angle1String), 0 < Angle1, 180 > Angle1 else {
            return nil
        }
return Angle1
    }
    
    @State var angle2String: String = ""
    var Angle2: Double? {
        guard let Angle2 = Double(angle2String), 0 < Angle2, 180 > Angle2 else {
            return nil
        }
return Angle2
    }
    @State var angle3String: String = ""
    var Angle3: Double? {
        guard let Angle3 = Double(angle3String), 0 < Angle3, 180 > Angle3 else {
            return nil
        }
return Angle3
    }
    //force unwrap !
    var triangle: String {
        if Angle1 == nil || Angle2 == nil || Angle3 == nil || Angle1! + Angle2! + Angle3! != 180 {
            return "Error"
        }
        if Angle1 == 60 && Angle2 == 60 && Angle3 == 60{
            return "Equilateral"
        }
        if Angle1 == Angle2 || Angle3 == Angle1 || Angle2 == Angle3 {
            return "Isosceles"
        }
        return "Scalene"
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            TextField("Angle 1", text: $angle1String, prompt: Text("Angle 1"))
            
            TextField("Angle 2", text: $angle2String, prompt: Text("Angle 2"))
            
            TextField("Angle 3", text: $angle3String, prompt: Text("Angle 3"))
            
            HStack{
                Spacer()
                Text(triangle)
                    .padding()
            Spacer()
            }
            Spacer()
        }
        
        .padding()
        .navigationTitle("Triangle Classification")
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

