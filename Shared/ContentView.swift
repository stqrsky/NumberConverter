//
//  ContentView.swift
//  Shared
//
//  Created by star on 13.05.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Input")
            
            Text("Input 2")
            ZStack {
                Color(.blue)
                VStack(spacing: 10) {
                    Numberline(number: "101001", base: "2")
                    Numberline(number: "12341234", base: "8")
                    Numberline(number: "12349124872", base: "10")
                    Numberline(number: "A12323FBE", base: "16")
                }
                .padding()
            }
            .cornerRadius(10)
            .shadow(radius: 3)
            .frame(height: 200)
        }
        .padding()
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
