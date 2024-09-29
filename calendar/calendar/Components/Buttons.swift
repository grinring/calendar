//
//  AlbumCollectionVIewCell.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/27.
//

import Foundation
import UIKit

class Buttons{
    static func createButton(title: String, image: UIImage?) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setImage(image, for: .normal)
        button.backgroundColor = Col.main
        return button
    }
    
    
}
