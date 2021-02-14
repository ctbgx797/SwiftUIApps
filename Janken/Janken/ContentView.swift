//
//  ContentView.swift
//  Janken
//
//  Created by 西谷恭紀 on 2021/02/14.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        VStack{
            //画像を指定
            Image("gu")
                //リサイズ指定
                .resizable()
                //画面内に収まるように､アスペクト比を指定
                .aspectRatio(contentMode: .fit)
                .padding()
            //じゃんけんの種類を指定
            Text("グー")
                .padding()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("じゃんけんをする!")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
