//
//  CustomFont.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/29.
//

import Foundation
import UIKit

typealias F = CustomFont

struct CustomFont {
    //bodyが20pointの時、24Point ,最大28
    static let title:UIFont = UIFont.preferredFont(forTextStyle: .title3)
    //bodyが20pointの時、20Point, 最大24
    static let body:UIFont = UIFont.preferredFont(forTextStyle: .body)
    //bodyが20pointの時、18Point, 最大22
    static let subBody:UIFont = UIFont.preferredFont(forTextStyle: .callout)
    //bodyが20pointの時、16Point, 最大20
    static let caption:UIFont = UIFont.preferredFont(forTextStyle: .footnote)
    //bodyが20pointの時、12Point, 最大15
    static let subCaption:UIFont = UIFont.preferredFont(forTextStyle: .caption2)
}
