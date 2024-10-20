
import Foundation
import UIKit

enum UserError:Error{
    case userNotFound
    case userIdNotFound
}

class DataStore {
    
    public static let shared = DataStore()
    let testData = TestData()
    
    static private var hostUserData:UserModel!
    static private var friendsData:[UserModel] = []
    static private var albumsData:[AlbumModel] = []
    
    init(){
        fetchHostUserData()
        fetchFriendsData()
        fetchAlbumData()
    }

}

extension DataStore{
    
    func getHostUserData()->UserModel{
        fetchHostUserData()
        return DataStore.hostUserData
    }
    
    func getAllFriends()->[UserModel]{
        fetchFriendsData()
        return DataStore.friendsData
    }
    
    func getFriend(userID:UUID) throws -> UserModel{
        for friend in DataStore.friendsData{
            if friend.id == userID{
                return friend
            }
        }
        throw UserError.userNotFound
    }
    
}

//本番環境ではここでAPI通信する
extension DataStore{
    
    //変数を初期化して空にしてから、再度データベースから最新のデータを取得する。
    func fetchHostUserData(){
        //テスト用のフェッチ
        DataStore.hostUserData = testData.hostUser
        
        //
        //本番ではデータベースからDataStore.hostUserDataにデータ呼び出しする
        //
    }
    
    //変数を初期化して空にしてから、再度データベースから最新のデータを取得する。
    func fetchFriendsData(){
        //テスト用のフェッチ friendsDataにfriendのUserModel代入
        DataStore.friendsData = []
        for friend in testData.testFriendsUsers{
            DataStore.friendsData.append(friend)
        }
        
        //
        //本番ではデータベースからDataStore.friendDataにデータ呼び出しする。
        //
    }
    
    //変数を初期化して空にしてから、再度データベースから最新のデータを取得する
    func fetchAlbumData(){
        //テスト用のフェッチ albumDatasにalbumを代入してゆく
        DataStore.albumsData = []
        for album in testData.testAlbumDatas{
            DataStore.albumsData.append(album)
        }
        
        //
        //本番ではデータベースからDataStore.friendDataにデータ呼び出しする。
        //
    }
    
}

