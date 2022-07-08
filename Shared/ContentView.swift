//
//  ContentView.swift
//  Shared
//
//  Created by Affirma Interns on 7/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
          
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    
                    if playerRand > cpuRand {
                        playerScore+=1
                    }
                    else if playerRand < cpuRand {
                        cpuScore+=1
                    }
                    
                }, label: {
                    
                    Image("dealbutton")
                })
             
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .padding(.bottom, 10)
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .padding(.bottom, 10)
                            .font(.headline)
                        Text(String(cpuScore))
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
