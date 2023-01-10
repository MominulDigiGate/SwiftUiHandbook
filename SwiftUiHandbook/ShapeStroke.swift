//
//  ShapeStroke.swift
//  SwiftUiHandbook
//
//  Created by Mac Mini 5 on 11/1/23.
//

import SwiftUI

struct ShapeStroke: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Color.blue)
                .ignoresSafeArea()
            
            VStack
            {
                //        Ellipse()
                //            .stroke(Color.black, lineWidth: 3)
                //            .frame(width: 44, height: 88)
                
                Circle()
                    .stroke(Color.black, lineWidth: 3)
                //            .frame(width: 44, height: 88)
                    .frame(width: 44, height: 44)
                
                Text("Shape & Stroke")
                
                //                RoundedRectangle(cornerRadius: 25,style: .continuous) // we can use Capsule
                
                Capsule()
                    .foregroundColor(Color.green)
                    .frame(height: 44)
                    .overlay(
                        Text("Sign Up")
                    )
            }
            .padding()
            .background(Color.white)
//            .clipShape(Circle())
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .padding()
        }
    }
}

struct ShapeStroke_Previews: PreviewProvider {
    static var previews: some View {
        ShapeStroke()
    }
}
