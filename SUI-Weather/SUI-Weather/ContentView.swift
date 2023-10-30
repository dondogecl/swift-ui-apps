//
//  ContentView.swift
//  SUI-Weather
//
//  Created by Alejandro Acevedo on 2023-10-30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: CustomColor.LighterBlue)
            
            VStack {
                CityTextView(cityName: "Ottawa, ON")
                MainTemperatureView(iconName: "cloud.sun.fill", temperature: 5)
                
                HStack (spacing: 20) {
                    // day 1
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill",
                                   temperature: 9)
                    // day 2
                    WeatherDayView(dayOfWeek: "Wed", imageName: "sun.max.fill",
                                   temperature: 12)
                    // day 3
                    WeatherDayView(dayOfWeek: "Thu", imageName: "wind",
                                   temperature: 8)
                    // day 4
                    WeatherDayView(dayOfWeek: "Fri", imageName: "sun.haze.fill",
                                   temperature: 2)
                    // day 5
                    WeatherDayView(dayOfWeek: "Sat", imageName: "sun.snow.fill",
                                   temperature: -3)
                }
                .padding(.bottom, 50)
                
                VStack {
                    Button() {
                        print("click")
                    } label: {
                        WeatherButton(title: "Change time of day", textColor: .blue,
                                      backgroundColor: .white)
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            VStack(spacing: 5) {
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                Text("\(temperature)°")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
            }
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainTemperatureView: View {
    var iconName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 50)
    }
}

