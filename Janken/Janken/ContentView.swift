//
//  ContentView.swift
//  Janken
//
//  Created by 西谷恭紀 on 2021/02/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber:Int = 0
    
    var body: some View {
        VStack{
            if answerNumber == 0{
                Text("これからじゃんけんをします")
            }else if answerNumber == 1{
                //1はグー
                Image("gu")
                    //リサイズ指定
                    .resizable()
                    //画面内に収まるように､アスペクト比を指定
                    .aspectRatio(contentMode: .fit)
            }else if answerNumber == 2{
                //2はチョキ
                Image("choki")
                    //リサイズ指定
                    .resizable()
                    //画面内に収まるように､アスペクト比を指定
                    .aspectRatio(contentMode: .fit)
            }else {
                //それ以外はパー
                Image("pa")
                    //リサイズ指定
                    .resizable()
                    //画面内に収まるように､アスペクト比を指定
                    .aspectRatio(contentMode: .fit)
            }
            Button(action: {
                //Buttonがタップされたときの動き
                print("TAP")
                //次のじゃんけんへ
                answerNumber = Int.random(in: 1...3)
            }) {
                //Buttonに表示する文字を指定
                Text("じゃんけんをする!")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
            }//[じゃんけんをする]ボタンここまで
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
