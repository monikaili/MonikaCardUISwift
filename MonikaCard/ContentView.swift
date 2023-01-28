//
//  ContentView.swift
//  MonikaCard
//
//  Created by Monika Iliašová on 04/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemGreen)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("monika")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Mon Ili")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                VStack{
                    
                    InfoView(text: "+123 456 789", imageName: "phone.fill")
                    InfoView(text: "Mon@ili.com", imageName: "envelope.fill")
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


