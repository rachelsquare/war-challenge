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
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .padding(.bottom, 10)
                            .font(.headline)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .padding(.bottom, 10)
                            .font(.headline)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                
                }.foregroundColor(Color.white)
                
                Spacer()
                
            }
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
