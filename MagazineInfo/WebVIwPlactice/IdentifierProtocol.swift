//
//  IdentifierEnum.swift
//  MagazineInfo
//
//  Created by Jae hyung Kim on 1/15/24.
//

import UIKit


extension UIViewController {
    static var Identifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell {
    static var Identifier: String {
        return String(describing: self)
    }
}

enum StoryBoardName: String {
    case WebViewCotroller = "WebViewStoryBoard"
    
   
}

