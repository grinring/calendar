
import Foundation
import UIKit

enum UserError:Error{
    case userNotFound
    case userIdNotFound
}

class DataStore {
    
    public static let shared = DataStore()
    
    // テスト用のホストユーザデータ生成。本番はデータベースからデータを取得
    var hostUserData: [UUID:UserModel]
    var hostUserDataID:UUID
    var friendsData: [UUID: UserModel] = [:]
    var friendsDataID:[UUID]{
        return DataStore.searchDataID(datas: friendsData)}
    var albumsData:[AlbumModel] = []
    
    private init() {
        hostUserData = DataStore.createUserData(firstName: "辻", lastName: "倫太郎", userIcon: IMG.aFriend)
        //テスト時強制アンラップ
        hostUserDataID = hostUserData.first!.key
        
        // friendデータを生成。本番も同様の方法でデータを生成または取得
        let testFriendsData = TestData.testFriendsData
        for friend in testFriendsData {
            let friendID = friend.id
            friendsData.updateValue(friend, forKey: friendID)
        }
        //テスト用albumデータ作成
        createAlbumData()
        //テストアルバムデータと友達データの紐付け
        syncDataAndAlbum()
        print(friendsData[friendsDataID[3]]?.albums)
        //hostにfriendsのIDを追加する
        addFriendsToHostUser()
    }
    
    static func createUserData(firstName: String, lastName: String, userIcon: UIImage) -> [UUID: UserModel] {
        let userData = UserModel(firstName: firstName, lastName: lastName, userIcon: userIcon)
        let userID = userData.id
        return [userID: userData]
    }
    
    static func searchDataID(datas:[UUID:UserModel])->[UUID]{
        var dataIDs:[UUID] = []
        for data in datas{
            let dataID = data.key
            dataIDs.append(dataID)
        }
        return dataIDs
    }
    
    //hostにfriendsのIDを追加する
    private func addFriendsToHostUser(){
        guard let hostUserID = hostUserData.keys.first, var hostUser = hostUserData[hostUserID] else {
            return
        }
        for friend in friendsData.values{
            hostUser.friends.append(friend.id)
        }
        hostUserData[hostUserID] = hostUser
    }
    
    func createAlbumData(){
        for testFriendData in TestData.testFriendsData{
            let IDselecter = Int.random(in: 0..<friendsDataID.count)
            let postTestUserID = friendsDataID[IDselecter]
            let selecter = Int.random(in: 0..<TestData.albums.count)
            
            albumsData.append(AlbumModel(id: postTestUserID,
                                         title: TestData.albums[selecter][0] ?? "旅行の思い出",
                                         description: TestData.albums[selecter][1] ?? "このアルバムには、特別な瞬間が詰まっています。",
                                         location: TestData.albums[selecter][2] ?? "奈良公園",
                                         photos: [IMG.defaultAlbumImage],
                                         //テストデータのみホストユーザのみの表示
                                         publicationRange: hostUserDataID))
        }
    }

    
    //テストアルバムデータと友達データの紐付け
    private func syncDataAndAlbum(){
        friendsData.forEach { (key,value) in
            for album in albumsData{
                if key == album.id{
                    value.albums.append(album)
                    break
                }
            }
        }
    }

}

extension DataStore{
    
    func addFriend(_ friendData: UserModel) {
        friendsData[friendData.id] = friendData
    }
    
    func getFriend(id:UUID) throws -> UserModel{
        guard let data = friendsData[id] else { throw UserError.userNotFound }
        return data
    }
    
    func getAllFriends()->[UserModel]{
        return Array(friendsData.values)
    }
}

