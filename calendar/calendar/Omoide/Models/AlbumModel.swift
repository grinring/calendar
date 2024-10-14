//
//  AlbumModel.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import Foundation
import UIKit

class AlbumModel: Identifiable {
    var id: UUID //albumID
    var userID: UUID
    var title: String
    var location:String
    var thumbnailImage: UIImage
    var posts: [PageModel]

    init(postUserID: UUID, title: String ,thumbnailImage: UIImage, location:String) {
        self.id = UUID()
        self.userID = postUserID
        self.title = title
        self.location = location
        self.thumbnailImage = thumbnailImage
        self.posts = []
    }

    func addPost(post: PageModel) {
        posts.append(post)
    }
}

class PageModel:Identifiable{
    var id:UUID //pageID
    var albumID:UUID
    var title:String
    var description:String
    var date:Date
    var location:String
    var images:[ImageModel]
    
    init(title: String, albumID:UUID, description: String, date: Date, location: String) {
        self.id = UUID()
        self.albumID = albumID
        self.title = title
        self.description = description
        self.date = date
        self.location = location
        self.images = []
    }
    
    func addImage(image:ImageModel) {
        images.append(image)
    }
}

class ImageModel:Identifiable{
    var id:UUID //imageID
    var pageID:UUID
    var image:[UIImage]
    
    init(pageID: UUID, image: [UIImage]) {
        self.id = UUID()
        self.pageID = pageID
        self.image = image
    }
    
}


