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
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 150, height: 150)
                    .overlay(Circle().stroke(.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                Circle()
                    .foregroundColor(.orange)
                    .frame(width: 150, height: 150)
                    .overlay(Circle().stroke(.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .opacity(lightsOff)
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 150, height: 150)
                    .overlay(Circle().stroke(.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .opacity(lightsOff)
                Spacer()
                Button(action: {
                    if startButton == "START" {
                        startButton = "NEXT"
                    }
                    
                    
                }, label: {Text(startButton)})
            }
            .padding()
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
