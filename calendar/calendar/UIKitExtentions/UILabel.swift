

import Foundation
import UIKit

extension UILabel{
    //labelの行数を調べる
    func numberOfLinesInLabel() -> Int {
        let maxSize = CGSize(width: self.frame.width, height: CGFloat.greatestFiniteMagnitude)
        let labelSize = self.sizeThatFits(maxSize)
        let lineHeight = self.font.lineHeight
        
        let numberOfLines = Int(labelSize.height / lineHeight)
        return numberOfLines
    }
}
