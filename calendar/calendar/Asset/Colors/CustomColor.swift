
import Foundation
import UIKit

typealias Col = CustomColor

struct CustomColor{
    static let customChar = UIColor(named: "CustomChar")!
    static let CustomBG = UIColor(named: "CustomBG")!
    //ライト・ダークに関わらず透明
    static let CustomCl = UIColor(named: "CustomClear")!
    
    //基本カラー
    static let base = CustomBG
    static let main = UIColor.systemGray
    static let accent = UIColor.systemCyan
    
}

