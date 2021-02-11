//
//  ContentView.swift
//  v1rosaSn0w
//
//  Created by Jack Sangster on 2021-02-10.
//

import SwiftUI
import cicuta_virosawrap

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("v1rosaSn0w")
                    .bold()
            }.padding()
            
            VStack {
                Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Jailbreak")
                        .padding([.top, .bottom], 15)
                        .foregroundColor(.white)
                        .padding([.leading, .trailing], 30)
                        .background(Color.blue)
                        .cornerRadius(35)
                })
            }.padding()
            
            
            VStack {
                Text("Someone Please Do This")
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
