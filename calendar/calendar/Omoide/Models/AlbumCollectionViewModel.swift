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

enum publicationPost{
    case publicPost
    case unPublicPost
}

class PageModel:Identifiable{
    var id:UUID //pageID
    var albumID:UUID
    var title:String
    var description:String
    var date:Date
    var location:String
    var images:[UIImage]
    var friends:[UserModel.ID]
    var publication: publicationPost
    
    init(title: String, albumID:UUID, description: String, date: Date, location: String, friends:[UserModel.ID], publication:publicationPost) {
        self.id = UUID()
        self.albumID = albumID
        self.title = title
        self.description = description
        self.date = date
        self.location = location
        self.images = []
        self.friends = friends
        self.publication = publication
    }
    
    func addImage(image:ImageModel) {
        for img in image.image{
            images.append(img)
        }
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


