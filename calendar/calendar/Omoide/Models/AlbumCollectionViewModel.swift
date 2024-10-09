//
//  AlbumCollectionViewModel.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/08.
//

import Foundation
import UIKit

protocol AlbumCollectionViewProtocol{
    var albumTitle:String { get }
    var albumDescription:String { get }
    var albumLocation:String{ get }
    var albumUserIcon:UIImage { get }
}

class AlbumCollectionViewModel:AlbumCollectionViewProtocol{
    
    var albumTitle: String
    var albumDescription: String
    var albumLocation: String
    var albumUserIcon: UIImage
    
    init(albumTitle: String, albumDescription: String, albumLocation: String, albumUserIcon: UIImage) {
        self.albumTitle = albumTitle
        self.albumDescription = albumDescription
        self.albumLocation = albumLocation
        self.albumUserIcon = albumUserIcon
    }
    
    
}
