//
//  WeatherButton.swift
//  SUI-Weather
//
//  Created by Alejandro Acevedo on 2023-10-30.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        // only the style of the button, the logic stays outside //
            Text(title)
                .frame(width: 250, height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .cornerRadius(15)
                .font(.system(size: 20, weight: .bold, design: .default))
                .padding()
        }
}
