
import Foundation
import UIKit

typealias IMG = CustomImage

internal struct CustomImage {
    //MARK: - tab bar
    static let tab00:UIImage = UIImage(named:"search")!
    static let tab01:UIImage = UIImage(named:"omoide")!
    static let tab02:UIImage = UIImage(named:"today")!
    static let tab03:UIImage = UIImage(named:"schedule")!
    static let tab04:UIImage = UIImage(named:"setting")!
    
    //MARK: - icon
    static let iconAlbum:UIImage = UIImage(systemName: "photo.on.rectangle.angled")!
    static let iconMap:UIImage = UIImage(systemName:"map")!
    static let iconSort:UIImage = UIImage(systemName:"slider.horizontal.3")!
    static let iconAddSchedule:UIImage = UIImage(systemName:"calendar.badge.plus")!
    static let iconAddFriend:UIImage = UIImage(systemName:"person.crop.circle.fill.badge.plus")!
    static let iconAddAlbum:UIImage = UIImage(systemName:"photo.badge.plus")!
    //friend collection view
    static let aFriendOfCollectionView:UIImage = UIImage(named:"friendOfCollection")!
    static let allFriendsOfCollection:UIImage = UIImage(named:"allFriendsOfCollection")!
    static let addFriendOfCollection:UIImage = UIImage(named:"addFriendOfCollection")!
    
    //MARK: - image
    static let defaultUserIcon:UIImage = UIImage(named:"userIcon")!
    static let defaultAlbumImage:UIImage = UIImage(named:"defaultAlbumImage")!
}
