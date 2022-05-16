//
//  ContentView.swift
//  Shared
//
//  Created by star on 13.05.22.
//

import SwiftUI

struct ContentView: View {
    @State private var numInput = ""
    let inputBase = 16
    
    var body: some View {
        VStack {
            Menu {
                Text("1")
                Text("2")
            } label: {
                Text("Eingabeformat ändern")
                Image(systemName: "chevron.down")
                
            }

            
            TextField("Your input", text: $numInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            ZStack {
                Color("CardBackgroundColor")
                VStack(spacing: 10) {
                    Numberline(number: numberSystemResult(forBase: 2), base: "2")
                    Numberline(number: numberSystemResult(forBase: 8), base: "8")
                    Numberline(number: numberSystemResult(forBase: 10), base: "10")
                    Numberline(number: numberSystemResult(forBase: 16), base: "16")
                }
                .padding()
            }
            .cornerRadius(10)
            .shadow(radius: 3)
            .frame(height: 200)
            .padding(.top, 5)
        }
        .padding()
    }
    
    func numberSystemResult(forBase base: Int) -> String {
        if let decimal = UInt(numInput, radix: inputBase) {
            return String(decimal, radix: base).uppercased()
        }
        return "-"
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

struct Numberline: View {
    let number: String
    let base: String
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0.0) {
            Spacer()
            Text(number)
                .font(.title)
                .minimumScaleFactor(0.8)
            Text(base)
                .minimumScaleFactor(0.2)
        }
        .foregroundColor(.white)
    }
}
