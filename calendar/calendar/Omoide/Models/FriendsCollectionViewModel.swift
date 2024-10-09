//
//  FriendsModel.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/06.
//

import Foundation
import UIKit


protocol FriendsCollectionViewProtocol {
    var cellText: String { get }
    var cellImage: UIImage { get }
}

struct FriendsCollectionViewModel: FriendsCollectionViewProtocol {

    private var firstName: String
    private var lastName: String
    private var firendImage: UIImage

    init(firstName: String, lastName: String, firendImage: UIImage) {
        self.firstName = firstName
        self.lastName = lastName
        self.firendImage = firendImage
    }

    var cellText: String {
        return lastName + "  " + firstName
    }

    var cellImage: UIImage {
        return firendImage
    }
}

struct FriendCollectionViewDefaultModel:FriendsCollectionViewProtocol{
    private var text:String
    private var image:UIImage
    
    init(text: String, image: UIImage) {
        self.text = text
        self.image = image
    }
    
    var cellText: String{
        return text
    }
    var cellImage: UIImage{
        return image
    }
    
}
