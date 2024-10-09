
import Foundation
import UIKit

enum UserError:Error{
    case userNotFound
    case userIdNotFound
}

class DataStore {
    
    public static let shared = DataStore()
    
    // テスト用のホストユーザデータ生成。本番はデータベースからデータを取得
    var hostUserData: [UUID:UserModel] = DataStore.createUserData(firstName: "辻", lastName: "倫太郎", userIcon: IMG.aFriend)
    var hostUserDataID: UUID {
        if let hostUserID = hostUserData.keys.first{
            return hostUserID
        }
        //エラーハンドリングいるかも
    }
    
    var friendsData: [UUID: UserModel] = [:]
    var frinedsDataID:[UUID]{
        return DataStore.searchDataID(datas: friendsData)
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
        print(hostUser.friends)
    }
    
    //テストアルバムデータと友達データの紐付け
    private func syncDataAndAlbum(){
        //先頭から１つずつアルバム抽出
        for albumData in TestData.testAlbumData{
            //先頭から1つずつ友達抽出
            for friendData in TestData.testFriendsData{
                //抽出したアルバムと抽出した友達のidが一致したらアルバムデータを追加
                if friendData.id == albumData.id{
                    friendsData[friendData.id]?.albums.append(albumData)
                }
            }
        }
    }
    
    private init() {
        // friendデータを生成。本番も同様の方法でデータを生成または取得
        let testFriendsData = TestData.testFriendsData
        for friend in testFriendsData {
            let friendID = friend.id
            friendsData[friendID] = friend
        }
        //hostにfriendsのIDを追加する
        addFriendsToHostUser()
        //テストアルバムデータと友達データの紐付け
        syncDataAndAlbum()
    }

}

extension DataStore{
    
    func addUser(_ friendData: UserModel) {
        friendsData[friendData.id] = friendData
    }
    
    func getUser(id:UUID) throws -> UserModel{
        guard let data = friendsData[id] else { throw UserError.userNotFound }
        return data
    }
    
    func getAllUsers()->[UserModel]{
        return Array(friendsData.values)
    }
}

