
import Foundation
import UIKit

typealias Col = CustomColor

struct CustomColor{
    //白(#FFFFFF),黒(#000000)として曖昧な配色ではなく純粋な白,黒が必要な場合。
    //通常、ダークモードの場合、背景が黒になることが多いことから、文字は"白",背景が"黒"となるようにCharacter,Backgroundを用意
    static let defaultCharacter = UIColor(named: "default character")
    static let defaultBackground = UIColor(named: "default background")
    //ライト・ダークに関わらず透明
    static let defaultClear = UIColor(named: "default clear")
    
    //基本カラー
    static let base = UIColor(named: "background")
    static let main = UIColor.systemGray
    static let accent = UIColor.systemCyan
    
}

