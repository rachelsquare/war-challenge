//
//  ContentView.swift
//  Shared
//
//  Created by Affirma Interns on 7/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
            
            
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                
                HStack {
                    Image("card3")
                    Image("card4")
                }
                
                Spacer()
                
                Image("dealbutton")
                
                Spacer()
                
                HStack {
                    VStack {
                        Text("Player")
                            .padding()
                        Text("0")
                    }
                    VStack {
                        Text("CPU")
                            .padding()
                        Text("0")
                    }
                
                }.foregroundColor(Color.white)
                Spacer()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
