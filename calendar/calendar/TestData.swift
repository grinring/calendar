//
//  TestData.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import Foundation

struct TestData{
    
    static let testFriendsData: [UserModel] = [
        UserModel(firstName: "鈴木", lastName: "太郎", userIcon: IMG.aFriend),
        UserModel(firstName: "田中", lastName: "花子", userIcon: IMG.aFriend),
        UserModel(firstName: "佐藤", lastName: "次郎", userIcon: IMG.aFriend),
        UserModel(firstName: "高橋", lastName: "美咲", userIcon: IMG.aFriend),
        UserModel(firstName: "伊藤", lastName: "健一", userIcon: IMG.aFriend),
        UserModel(firstName: "小林", lastName: "優子", userIcon: IMG.aFriend),
        UserModel(firstName: "加藤", lastName: "大輔", userIcon: IMG.aFriend),
        UserModel(firstName: "山田", lastName: "美香", userIcon: IMG.aFriend),
        UserModel(firstName: "松本", lastName: "翔太", userIcon: IMG.aFriend),
        UserModel(firstName: "中村", lastName: "由美", userIcon: IMG.aFriend),
        UserModel(firstName: "小川", lastName: "和也", userIcon: IMG.aFriend),
        UserModel(firstName: "斎藤", lastName: "直美", userIcon: IMG.aFriend),
        UserModel(firstName: "山口", lastName: "隆", userIcon: IMG.aFriend),
        UserModel(firstName: "木村", lastName: "彩", userIcon: IMG.aFriend),
        UserModel(firstName: "渡辺", lastName: "誠", userIcon: IMG.aFriend),
        UserModel(firstName: "藤田", lastName: "千尋", userIcon: IMG.aFriend),
        UserModel(firstName: "吉田", lastName: "拓也", userIcon: IMG.aFriend),
        UserModel(firstName: "上田", lastName: "明日香", userIcon: IMG.aFriend),
        UserModel(firstName: "森", lastName: "亮介", userIcon: IMG.aFriend),
        UserModel(firstName: "石川", lastName: "涼子", userIcon: IMG.aFriend)
    ]
    
    var testFriendsDataID:[UUID] = []
    static var testAlbumData:[AlbumModel] = []
    
    mutating func createAlbumData(){
        for testFriendData in TestData.testFriendsData{
            testFriendsDataID.append(testFriendData.id)
        }
        for testFriendData in TestData.testFriendsData{
            let IDselecter = Int.random(in: 0..<testFriendsDataID.count)
            let postUserID = testFriendsDataID[IDselecter]
            let titleSelecter = Int.random(in: 0..<albums.count)
            TestData.testAlbumData.append(AlbumModel(id: postUserID,
                                                     title: albums[titleSelecter]["title"] ?? "旅行の思い出",
                                                     description: albums[titleSelecter]["description"] ?? "このアルバムには、特別な瞬間が詰まっています。",
                                                     location: albums[titleSelecter]["location"] ?? "奈良公園",
                                                     photos: createPhotoModel(postUsersID: postUserID),
                                                     //テストデータのみホストユーザのみの表示
                                                     publicationRange: DataStore.shared.hostUserDataID))
        }
    }

    
    func createPhotoModel(postUsersID:UUID)->[PhotoModel]{
        var photoDatas:[PhotoModel] = []
        for i in 0...20{
            photoDatas.append(PhotoModel(id: postUsersID,
                                         image: IMG.defaultAlbumImage))
        }
        return photoDatas
    }
    
    let albums: [[String: String]] = [
        ["title": "スポーツイベント", "description": "美しい景色を楽しんだ一日を振り返ります。", "location": "四天王寺"],
        ["title": "冬の楽しみ", "description": "特別な場所で心温まる瞬間を過ごしました。", "location": "仙台"],
        ["title": "新しい発見", "description": "特別な日を忘れないように記録しました。", "location": "道頓堀"],
        ["title": "夏の海", "description": "楽しいゲームを通じて絆を深めました。", "location": "熱海"],
        ["title": "秋の紅葉", "description": "このアルバムには、特別な瞬間が詰まっています。", "location": "アクアワールド"],
        ["title": "思い出の場所", "description": "楽しい瞬間を記録したアルバムです。", "location": "東京ディズニーランド"],
        ["title": "サプライズイベント", "description": "この瞬間が永遠に続くことを願います。", "location": "横浜ランドマークタワー"],
        ["title": "家族の思い出", "description": "新しい仲間たちとの素晴らしい瞬間を集めました。", "location": "グランフロント大阪"],
        ["title": "アートと文化", "description": "新しい場所での冒険を記録したいと思います。", "location": "青山"],
        ["title": "思い出のアルバム", "description": "心に残る体験をまとめたアルバムです。", "location": "福井"],
    ]

    
}
