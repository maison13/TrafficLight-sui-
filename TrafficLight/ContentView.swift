//
//  ContentView.swift
//  TrafficLight
//
//  Created by Vovo on 10.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var startButton = "START"
    @State private var lightsOn: CGFloat = 1
    @State private var lightsOff: CGFloat = 0.3
    @State private var currentLight: Color = .red
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                
                CircleView(color: .red, opacity: lightsOff)
                CircleView(color: .orange, opacity: lightsOff)
                CircleView(color: .green, opacity: lightsOff)
                Spacer()
                Button(action: {
                    if startButton == "START" {
                        startButton = "NEXT"
                    }
                    
                }, label: {Text(startButton)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 170, height: 60)
                        .foregroundColor(.white)
                        .background(.blue)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(.white, lineWidth: 8))
                        .cornerRadius(15)
                    })
            }
            .padding()
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
