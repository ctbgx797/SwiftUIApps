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
    //ギターデータの読み込み
    let guiterData = NSDataAsset(name: "guitarSound")!.data
    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    //ギター用プレイヤーの変数
    var guiterPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do{
            //シンバル用のプレイヤーに､音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: self.cymbalData)
            //シンバルの音源再生
            cymbalPlayer.play()
        }catch {
            print("シンバルでエラーが発生")
        }
        
    }
    
    
    func guiterPlay() {
        do{
            //ギター用のプレイヤーに､音源データを指定
            guiterPlayer = try AVAudioPlayer(data: self.guiterData)
            //ギターの音源再生
            guiterPlayer.play()
        }catch {
            print(" ギターでエラーが発生")
        }
    }
}
