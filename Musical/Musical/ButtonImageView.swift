//
//  ButtonImageView.swift
//  Musical
//
//  Created by 西谷恭紀 on 2021/02/20.
//

import SwiftUI

struct ButtonImageView: View {
    //画像ファイル名
    let imageName: String
    var body: some View {
        //画像を表示
        Image(imageName)
            .renderingMode(.original)        
    }
}

struct ButtonImageView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImageView(imageName: "cymbal")
    }
}
