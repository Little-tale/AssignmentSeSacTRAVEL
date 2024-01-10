//
//  SeSacTrableStructs.swift
//  MagazineInfo
//
//  Created by Jae hyung Kim on 1/11/24.
//

// 이번엔 구조체 될만한것만 모아봄
import UIKit
struct Magazine {
    var title: String
    var subtitle: String
    var photo_image: String
    var date: String
    var link: String
}

enum setTitleOfMagazine {
    case main
    case sub
    // 아오 왜그러는거야 나한테
    // case Date(date: String)
   case Date
    
    // switch
    
    func titleStyles(uiLabel : UILabel, text : String){
        switch self {
        case .main:
            uiLabel.numberOfLines = 2
            uiLabel.textAlignment = .left
            uiLabel.font = .systemFont(ofSize: 24, weight: .heavy)
            uiLabel.text = text
        
        case .sub:
            uiLabel.numberOfLines = 1
            uiLabel.textAlignment = .left
            uiLabel.font = .systemFont(ofSize: 15, weight: .bold)
            uiLabel.textColor = .systemGray
            uiLabel.text = text
            
            // 연관값?
        case .Date:
            uiLabel.text = text
            uiLabel.textAlignment = .right
            uiLabel.font = .systemFont(ofSize: 14, weight: .semibold)
            uiLabel.textColor = .systemGray2
        }
    }
}


