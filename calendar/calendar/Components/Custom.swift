//
//  Custom.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/05.
//

import Foundation
import UIKit

typealias CustomComponents = Custom

class Custom{
    
    static func createButton(title:String,icon:UIImage?,bgColor:UIColor)->UIButton {
        let button = UIButton(type: .system)
        var config = UIButton.Configuration.filled()
        config.background.backgroundColor = bgColor
        config.attributedTitle = AttributedString(title, attributes: AttributeContainer([
            NSAttributedString.Key.font:F.body,
            NSAttributedString.Key.foregroundColor:Col.customChar
        ]))
        if let icon = icon {
            let iconConfig = UIImage.SymbolConfiguration(paletteColors: [.systemTeal,Col.customChar])
            config.image = icon.withConfiguration(iconConfig)
            config.imagePadding = Size.itemMargin
        }
        config.cornerStyle = .large
        button.configuration = config
        return button
    }
}
