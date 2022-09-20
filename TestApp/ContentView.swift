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
                
            LinearGradient(gradient: Gradient(colors: [.white, .cyan, .blue])
                           ,startPoint: .topLeading
                           ,endPoint: .trailing)
                .ignoresSafeArea(.all)
            
            VStack{
                Text("Manama, Bahrain")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .light, design: .rounded))
                    .padding(20)
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                
                    Text("43 °C")
                        .font(.system(size: 40, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                    }
                
                
                Spacer()
                
                
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


    
