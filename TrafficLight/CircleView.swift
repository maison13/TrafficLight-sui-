//
//  CircleView.swift
//  TrafficLight
//
//  Created by Vovo on 10.06.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: CGFloat
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

#Preview {
    CircleView(color: .red, opacity: 1)
}
