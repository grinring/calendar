//
//  AlbumModel.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import Foundation
import UIKit

struct AlbumModel:Identifiable{
    var id: UUID
    var title:String
    var description:String
    var location:String
    var photos:[UIImage]
    var publicationRange:UUID
}


