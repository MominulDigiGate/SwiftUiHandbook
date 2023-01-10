//
//  ContentView.swift
//  SwiftUiHandbook
//
//  Created by Mac Mini 5 on 10/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            ZStack{
                
                VStack
                {
                    HStack
                    {
                        Image("Locate")
                            .resizable()
                            .frame(width: 20, height: 25)
                            .foregroundColor(Color.init(hex: "F86562"))
                        
                        VStack(alignment: .leading)
                        {
                            Text("Current Location")
                                .font(.caption)
                                .foregroundColor(Color.init(hex: "F86562"))
                            
                            HStack(alignment: .center){
                        
                                Text("Baridhara Diplomatic Zone")
                                
                                Image(systemName: "chevron.down")
                            }
                        }
                        .padding(.horizontal,10)
                        
                        
                        Spacer()
                    
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.init(hex: "F86562"))
                    }
                    .padding(.all, 20)
                    .background(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [Color.orange.opacity(1), Color.green.opacity(2)]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )
                    Spacer()
                }
            }
//            .background(
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [Color.green, Color.orange]),
//                    startPoint: .leading,
//                    endPoint: .trailing)
//            )

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
