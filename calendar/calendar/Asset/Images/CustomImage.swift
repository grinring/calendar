
import Foundation
import UIKit

typealias IMG = CustomImage

internal struct CustomImage {
    //tab bar
    static let tab00:UIImage = UIImage(named:"search")!
    static let tab01:UIImage = UIImage(named:"omoide")!
    static let tab02:UIImage = UIImage(named:"today")!
    static let tab03:UIImage = UIImage(named:"schedule")!
    static let tab04:UIImage = UIImage(named:"setting")!
    
    //icon
    static let iconAlbum:UIImage = UIImage(systemName: "photo.on.rectangle.angled")!
    static let iconMap:UIImage = UIImage(systemName:"map")!
    static let iconSort:UIImage = UIImage(systemName:"slider.horizontal.3")!
    
    //image
    static let defaultUserIcon:UIImage = UIImage(named:"userIcon")!
    static let defaultAlbumImage:UIImage = UIImage(named:"defaultAlbumImage")!
}
