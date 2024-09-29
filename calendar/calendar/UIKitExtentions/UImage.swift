//
//  UImage.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/29.
//

import Foundation
import UIKit

extension UIImage{
    
    func resizeImage(width:CGFloat,height:CGFloat) -> UIImage?{
        let size = CGSize(width: width, height: height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        self.draw(in: CGRect(origin: .zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizedImage
    }
}
