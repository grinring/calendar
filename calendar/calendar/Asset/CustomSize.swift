
import Foundation
import UIKit

typealias Size = CustomSize

enum SizePattern {
    case S,M,L
}

struct CustomSize {
    //MARK: - font size
    //bodyが20pointの時、24Point ,最大28
    static let title:CGFloat = UIFont.preferredFont(forTextStyle: .title3).pointSize
    //bodyが20pointの時、20Point, 最大24
    static let body:CGFloat = UIFont.preferredFont(forTextStyle: .body).pointSize
    //bodyが20pointの時、18Point, 最大22
    static let subBody:CGFloat = UIFont.preferredFont(forTextStyle: .callout).pointSize
    //bodyが20pointの時、16Point, 最大20
    static let caption:CGFloat = UIFont.preferredFont(forTextStyle: .footnote).pointSize
    //bodyが20pointの時、12Point, 最大15
    static let subCaption:CGFloat = UIFont.preferredFont(forTextStyle: .caption2).pointSize
    
    //MARK: - margin
    static let viewMargin:CGFloat = 18
    static let contensMargin:CGFloat = 12
    static let itemMargin:CGFloat = 6
    
    //MARK: - view size
    static let minimumButtonSize:CGFloat = 44
    
    static func setupSizePattern()->SizePattern{
        let systemSize = UIFont.preferredFont(forTextStyle: .body).pointSize
        switch systemSize{
        case 14,15,16:
            return SizePattern.S
        case 17,19:
            return SizePattern.M
        case 21,23:
            return SizePattern.L
        default:
            return SizePattern.M
        }
    }
}
