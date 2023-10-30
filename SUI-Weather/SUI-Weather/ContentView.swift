//
//  ContentView.swift
//  SUI-Weather
//
//  Created by Alejandro Acevedo on 2023-10-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, CustomColor.LighterBlue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Ottawa, ON")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("5°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                
                HStack (spacing: 12) {
                    // day 1
                    VStack {
                        Text("Tue")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        VStack(spacing: 5) {
                            Image(systemName: "sun.max.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                            Text("9°")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                    // day 2
                    VStack {
                        Text("Wed")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        VStack(spacing: 5) {
                            Image(systemName: "sun.max.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                            Text("12°")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                    // day 3
                    VStack {
                        Text("Thu")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        VStack(spacing: 5) {
                            Image(systemName: "wind")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                            Text("8°")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                    // day 4
                    VStack {
                        Text("Fri")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        VStack(spacing: 5) {
                            Image(systemName: "sun.haze.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                            Text("2°")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                    // day 5
                    VStack {
                        Text("Sat")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding()
                        VStack(spacing: 5) {
                            Image(systemName: "sun.snow.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                            Text("-3°")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                }
                
                VStack {
                    Button("Change time of day") {
                        //Text("Change time of day")
                    }
                    .fontWeight(.bold)
                    .frame(width: 250, height: 50)
                    .foregroundColor(.blue)
                    .background(.white)
                    .cornerRadius(15)
                    .padding(80)
                    
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

func signIn() {
    // something
}
