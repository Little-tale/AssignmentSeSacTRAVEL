//
//  DataLogic.swift
//  MagazineInfo
//
//  Created by Jae hyung Kim on 1/15/24.
//

import UIKit

enum DateFormatStyle {
    case koreaLong
    case koreaShort
    
    var format: String {
        switch self {
        case .koreaLong:
            return "yyyy년 MM월 dd일"
        case .koreaShort:
            return "yy년 M월 d일"
        }
    }
    
}


struct DateFormat {
    
    static func getDate(date: String, formatStyle: DateFormatStyle) -> String {
        
        let dateFormmerter = DateFormatter()
        dateFormmerter.dateFormat = "yyMMdd"
        
        if let dateT = dateFormmerter.date(from: date) {
            dateFormmerter.dateFormat = formatStyle.format
            let thisDate = dateFormmerter.string(from: dateT)
            return thisDate
        }else {
            return "날짜 읽기 실패"
        }
    }
}


