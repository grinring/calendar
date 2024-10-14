//
//  UserModel.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import Foundation
import UIKit

class UserModel: Identifiable {
    var id: UUID
    var firstName: String
    var lastName: String
    var userIcon: UIImage
    var friends: [UUID] // ユーザーの友達を配列で保持
    var albums: [AlbumModel] // ユーザーのアルバムを配列で保持

    init(firstName: String, lastName: String, userIcon: UIImage) {
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
        self.userIcon = userIcon
        self.friends = [] // 初期化
        self.albums = [] // 初期化
    }

    func addFriend(friendID: UUID) {
        if !friends.contains(friendID) { // 重複を避ける
            friends.append(friendID) // 友達を配列に追加
        }
    }

    func addAlbum(album: AlbumModel) {
        albums.append(album) // アルバムを配列に追加
    }
}
