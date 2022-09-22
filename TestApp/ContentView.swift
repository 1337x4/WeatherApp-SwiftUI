//
//  ContentView.swift
//  TestApp
//
//  Created by khalid on 11/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
                
            LinearGradient(gradient: Gradient(colors: [.white,.blue, .cyan])
                           ,startPoint: .topLeading
                           ,endPoint: .trailing)
                .ignoresSafeArea(.all)
            
            VStack{
                Text("Manama, Bahrain")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .medium, design: .rounded))
                    .padding(20)
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                        .fixedSize()
                    
                    
                    Text("43 °C")
                        .font(.system(size: 40, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                }
                
                
                Spacer()
                
                HStack(){
                    
                    WeatherDayView(Dayofweek: "Mon", imagename: "sun.dust.fill", temp: 41)
                        .padding(.leading,8.0)
                    WeatherDayView(Dayofweek: "Tue", imagename: "cloud.sun.fill", temp: 39)
                        .padding(.leading,8.0)
                    WeatherDayView(Dayofweek: "Wed", imagename: "wind.snow", temp: 29)
                        .padding(.leading,8.0)
                    WeatherDayView(Dayofweek: "Thu", imagename: "sun.max.fill", temp: 37)
                        .padding(.leading,8.0)
                    WeatherDayView(Dayofweek: "Fri", imagename: "sun.max.fill", temp: 32)
                        .padding(.leading,8.0)
                    WeatherDayView(Dayofweek: "Sat", imagename: "sun.max.fill", temp: 42)
                        .padding(.leading,5.5)
                        
                    
                        
                }
                
            }
            
        }
        
    }
}


    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
          
        }
    }
}
    


    

struct WeatherDayView: View {
    var Dayofweek: String
    var imagename: String
    var temp: Int
    
    var body: some View {
        VStack{
            
            VStack(){
                
                Text(Dayofweek)
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                
                Image(systemName: imagename)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60,height: 70)
                    .padding(.leastNonzeroMagnitude)
                
                Text("\(temp)°")
                    .font(.system(size:23, weight: .medium))
                    .foregroundColor(.white)
                
                
            }
            .frame(width: 63.0, height: 500.0, alignment: .topLeading)
            .padding(.leastNonzeroMagnitude)
                
            VStack(){
                
                    
                
                
                
            }
        
    
            
        }
        
        
    }
}
