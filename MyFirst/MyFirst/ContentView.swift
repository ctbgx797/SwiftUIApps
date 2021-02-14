//
//  ContentView.swift
//  MyFirst
//
//  Created by 西谷恭紀 on 2021/02/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var outputText = "Hello, World!"
    
    var body: some View {
        
        VStack{
            Text(outputText)
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                outputText = "Hi,Swift!"
                print("でばっぐてすと")
                print(outputText)
            }) {
                Text("切り替えボタン")
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //iPhoneなどのデバイスをここで選択できる
            //.previewDevice()
            
    }
}
