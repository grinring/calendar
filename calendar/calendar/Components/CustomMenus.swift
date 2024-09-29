//
//  CustomMenu.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/28.
//

import Foundation
import UIKit

class CustomMenus{
    
    static func createMenu()-> UIMenu{
        
        let action1 = UIAction(title: "最近の更新", image: UIImage(systemName: "star")) { _ in
                    print("1")
                }
        let action2 = UIAction(title: "最終編集日", image: UIImage(systemName: "star")) { _ in
                    print("2")
                }
        let action3 = UIAction(title: "知り合いの並び替え", image: UIImage(systemName: "star")) { _ in
                    print("3")
                }
        
        return UIMenu(children: [action1,action2,action3])
    }
}
