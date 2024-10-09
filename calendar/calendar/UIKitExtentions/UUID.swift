//
//  UUID.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/08.
//

import Foundation
import UIKit

extension UUID{
    static func generateUniqueID()->String{
        let uuidString = UUID().uuidString
        let timeStamp = Int(Date().timeIntervalSince1970)
        return "\(uuidString)_\(timeStamp)"
    }
}
