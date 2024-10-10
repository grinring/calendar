//
//  UserModel.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import Foundation
import UIKit

class UserModel:Identifiable{
    
    var id:UUID
    var firstName:String
    var lastName:String
    var userIcon:UIImage
    
    var friends:[UUID] = []
    var albums:[AlbumModel] = []
    
    init(firstName: String, lastName: String, userIcon: UIImage) {
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
        self.userIcon = userIcon
    }
}
