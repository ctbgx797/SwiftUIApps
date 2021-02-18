//
//  SoundPlayer.swift
//  Musical
//
//  Created by 西谷恭紀 on 2021/02/18.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルデータの読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    func cymbalPlay() {
        do{
            //シンバル用のプレイヤーに､音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            //シンバルの音源再生
            cymbalPlayer.play()
        }catch {
            print("シンバルでエラーが発生")
        }
        
    }
    
}
