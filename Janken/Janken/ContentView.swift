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
            //スペースを追加
            Spacer()
            if answerNumber == 0{
                Text("これからじゃんけんをします")
                    //可変的に余白を作成
                    .padding(.bottom)
            }else if answerNumber == 1{
                //1はグー
                Image("gu")
                    //リサイズ指定
                    .resizable()
                    //画面内に収まるように､アスペクト比を指定
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("グー")
                    //可変的に余白を作成
                    .padding(.bottom)
            }else if answerNumber == 2{
                //2はチョキ
                Image("choki")
                    //リサイズ指定
                    .resizable()
                    //画面内に収まるように､アスペクト比を指定
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
                    //可変的に余白を作成
                    .padding(.bottom)
            }else {
                //それ以外はパー
                Image("pa")
                    //リサイズ指定
                    .resizable()
                    //画面内に収まるように､アスペクト比を指定
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
                    //可変的に余白を作成
                    .padding(.bottom)
            }
            
            
            Button(action: {
                //Buttonがタップされたときの動き
                print("TAP")
                //次のじゃんけんへ
                //answerNumber = Int.random(in: 1...3)
                //新しいじゃんけんの結果を一時的に格納する変数
                var newAnswerNumber = 0
                //ランダムに結果を出すが､旋回の結果とは異なる場合のみ採用
                //repeatは繰り返しを意味する
                repeat{
                    //1,2,3の変数をランダムに算出(乱数)
                    newAnswerNumber = Int.random(in: 1...3)
                    //前回と同じ結果のときは､再度ランダムに数値を出す
                    //異なる結果のときは､repeatを抜ける
                }while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            }) {
                //Buttonに表示する文字を指定
                Text("じゃんけんをする!")
                    .frame(height: 100.0)
                    .frame(maxWidth: .infinity)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(Color.pink)
                    .foregroundColor(.white)
            }//[じゃんけんをする]ボタンここまで
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
