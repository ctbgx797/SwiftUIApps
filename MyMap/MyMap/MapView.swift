//
//  MapView.swift
//  MyMap
//
//  Created by 西谷恭紀 on 2021/02/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    //検索キーワード
    let searchKey:String
    
    //表示するViewを作成するときに実行
    func makeUIView(context: Context) -> some UIView {
        //MKMapViewのインスタンス作成
        MKMapView()
    }
    
    //表示したViewが更新されるたびに実行
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        //入力された文字をデバックエリアに表示
        print(searchKey)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "東京タワー")
    }
}
