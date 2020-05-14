//
//  ContentView.swift
//  Swift UI Test
//
//  Created by melvin asare on 13/05/2020.
//  Copyright © 2020 melvin asare. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randomNumber1 = 2
    @State private var randomNumber2 = 2
    
    @State private var score1 = 0
    @State private var score2 = 0
    
    var body: some View {
        
        
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("logo")
                Spacer()
                
                HStack {
                    Image("card" + String(randomNumber1))
                    Image("card" + String(randomNumber2))
                }
                
                Spacer()
                Button(action: {
                    self.randomNumber1 = Int.random(in: 2...14)
                    
                    self.randomNumber2 = Int.random(in: 2...14)
                    
                    if self.randomNumber1 > self.randomNumber2 {
                        self.score1 += 1
                    } else if self.randomNumber1 == self.randomNumber2 {
                        self.score1 = 0
                        self.score2 = 0
                    } else {
                        self.score2 += 1

                    }
                }, label: {
                    Image("dealbutton").renderingMode(.original)
                })
                Spacer()
                
                HStack {
                    VStack {
                        Text("Player").bold()
                            .padding(.bottom, 10)
                        
                        Text(String(score1))
                    }.padding(.leading, 20)  .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU").bold()
                            .padding(.bottom, 10)
                        
                        Text(String(score2))
                    }.padding(.trailing, 20)
                        .foregroundColor(.white)
                }
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
