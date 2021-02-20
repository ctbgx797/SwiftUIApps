//
//  ContentView.swift
//  Musical
//
//  Created by 西谷恭紀 on 2021/02/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //音を鳴らすためのSoundPlayerクラスのインスタンス生成
        let soundPlayer = SoundPlayer()
        
        ZStack {
            //背景画像を指定
            Image("background")
                //リサイズ
                .resizable()
                //画面いっぱいになるようにセーフエリアの外いっぱいまで指定
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                //アスペクト比を維持して､短辺基準に収まるようにする
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            
            HStack {
                //シンバルボタン
                Button(action:{
                    //ボタンをタップしたときのアクション
                    //シンバルの音をならす
                    soundPlayer.cymbalPlay()
                }){
                    //画像を表示させる
                    ButtonImageView(imageName: "cymbal")
                }
                
                //ギターボタン
                Button(action:{
                    //ボタンをタップしたときのアクション
                    //ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                }){
                    //画像を表示させる
                    ButtonImageView(imageName: "guitar")
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
