//
//  TestData.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/07.
//

import Foundation
import UIKit

class TestData{
    
    var hostUser:UserModel!
    var testFriendsUsers:[UserModel]!
    var testAlbumDatas:[AlbumModel]!
    var testPageDatas:[PageModel]!
    var testPageImageDatas:[ImageModel]!
    
    init(){
        hostUser = UserModel(firstName: "辻", lastName: "倫太郎", userIcon: IMG.aFriendOfCollectionView)
        
        testFriendsUsers = [
            UserModel(firstName: "鈴木", lastName: "太郎", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "田中", lastName: "花子", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "佐藤", lastName: "次郎", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "高橋", lastName: "一郎", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "渡辺", lastName: "美咲", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "伊藤", lastName: "健太", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "山本", lastName: "彩花", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "中村", lastName: "大輔", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "小林", lastName: "恵理", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "加藤", lastName: "翔太", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "吉田", lastName: "直美", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "山田", lastName: "雄大", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "石井", lastName: "紗季", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "森田", lastName: "晴香", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "岡田", lastName: "真也", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "清水", lastName: "理恵", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "松本", lastName: "佳代", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "長谷川", lastName: "一美", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "藤田", lastName: "大和", userIcon: IMG.aFriendOfCollectionView),
            UserModel(firstName: "黒田", lastName: "恭子", userIcon: IMG.aFriendOfCollectionView)
        ]
        
        testAlbumDatas = [
            AlbumModel(postUserID: testFriendsUsers[1].id, title: "楽しい思い出の旅", thumbnailImage: IMG.defaultAlbumImage, location: "東京都渋谷区代々木1-1-1"),
            AlbumModel(postUserID: testFriendsUsers[2].id, title: "家族の素晴らしい瞬間", thumbnailImage: IMG.defaultAlbumImage, location: "大阪府大阪市北区梅田2-2-2"),
            AlbumModel(postUserID: testFriendsUsers[3].id, title: "友人との特別な集い", thumbnailImage: IMG.defaultAlbumImage, location: "京都府京都市中京区河原町3-3-3"),
            AlbumModel(postUserID: testFriendsUsers[4].id, title: "バースデーサプライズの思い出", thumbnailImage: IMG.defaultAlbumImage, location: "福岡県福岡市中央区天神4-4-4"),
            AlbumModel(postUserID: testFriendsUsers[5].id, title: "卒業式の感動的な日", thumbnailImage: IMG.defaultAlbumImage, location: "北海道札幌市中央区北5条5-5-5"),
            AlbumModel(postUserID: testFriendsUsers[6].id, title: "夏の海での楽しい思い出", thumbnailImage: IMG.defaultAlbumImage, location: "沖縄県那覇市松山6-6-6"),
            AlbumModel(postUserID: testFriendsUsers[7].id, title: "冬の素晴らしい旅行", thumbnailImage: IMG.defaultAlbumImage, location: "長野県松本市浅間7-7-7"),
            AlbumModel(postUserID: testFriendsUsers[8].id, title: "特別な日を記録したアルバム", thumbnailImage: IMG.defaultAlbumImage, location: "広島県広島市中区袋町8-8-8"),
            AlbumModel(postUserID: testFriendsUsers[9].id, title: "愛犬との幸せなひととき", thumbnailImage: IMG.defaultAlbumImage, location: "兵庫県神戸市中央区三宮9-9-9"),
            AlbumModel(postUserID: testFriendsUsers[10].id, title: "友達と過ごした楽しいキャンプ", thumbnailImage: IMG.defaultAlbumImage, location: "静岡県富士市田子の浦10-10-10"),
            AlbumModel(postUserID: testFriendsUsers[11].id, title: "日帰り旅行の思い出アルバム", thumbnailImage: IMG.defaultAlbumImage, location: "愛知県名古屋市中村区名駅11-11-11"),
            AlbumModel(postUserID: testFriendsUsers[12].id, title: "夏祭りの思い出を振り返る", thumbnailImage: IMG.defaultAlbumImage, location: "千葉県千葉市美浜区稲毛12-12-12"),
            AlbumModel(postUserID: testFriendsUsers[13].id, title: "ハロウィンパーティーの楽しさ", thumbnailImage: IMG.defaultAlbumImage, location: "埼玉県さいたま市大宮区桜木町13-13-13"),
            AlbumModel(postUserID: testFriendsUsers[14].id, title: "美味しい食事の思い出", thumbnailImage: IMG.defaultAlbumImage, location: "石川県金沢市片町14-14-14"),
            AlbumModel(postUserID: testFriendsUsers[15].id, title: "海外旅行での冒険と発見", thumbnailImage: IMG.defaultAlbumImage, location: "東京都新宿区西新宿15-15-15"),
            AlbumModel(postUserID: testFriendsUsers[16].id, title: "秋の紅葉狩りの素晴らしさ", thumbnailImage: IMG.defaultAlbumImage, location: "奈良県奈良市春日山16-16-16"),
            AlbumModel(postUserID: testFriendsUsers[17].id, title: "クリスマスの楽しい思い出", thumbnailImage: IMG.defaultAlbumImage, location: "宮城県仙台市青葉区中央17-17-17"),
            AlbumModel(postUserID: testFriendsUsers[18].id, title: "思い出に残る映画鑑賞", thumbnailImage: IMG.defaultAlbumImage, location: "高知県高知市帯屋町18-18-18"),
            AlbumModel(postUserID: testFriendsUsers[19].id, title: "新年の特別な集まり", thumbnailImage: IMG.defaultAlbumImage, location: "長崎県長崎市浜町19-19-19"),
            AlbumModel(postUserID: testFriendsUsers[0].id, title: "友人の結婚式での思い出", thumbnailImage: IMG.defaultAlbumImage, location: "熊本県熊本市中央区上通町20-20-20"),
            AlbumModel(postUserID: testFriendsUsers[1].id, title: "家族旅行の思い出アルバム", thumbnailImage: IMG.defaultAlbumImage, location: "岡山県岡山市北区駅前町21-21-21"),
            AlbumModel(postUserID: testFriendsUsers[2].id, title: "スポーツ観戦での興奮", thumbnailImage: IMG.defaultAlbumImage, location: "東京都台東区浅草22-22-22"),
            AlbumModel(postUserID: testFriendsUsers[3].id, title: "ビーチでの素晴らしい休日", thumbnailImage: IMG.defaultAlbumImage, location: "千葉県銚子市海岸町23-23-23"),
            AlbumModel(postUserID: testFriendsUsers[4].id, title: "年末年始の楽しい思い出", thumbnailImage: IMG.defaultAlbumImage, location: "山口県下関市唐戸24-24-24"),
            AlbumModel(postUserID: testFriendsUsers[5].id, title: "友人の誕生日を祝った旅行", thumbnailImage: IMG.defaultAlbumImage, location: "東京都品川区東品川25-25-25"),
            AlbumModel(postUserID: testFriendsUsers[6].id, title: "親戚との楽しい集まり", thumbnailImage: IMG.defaultAlbumImage, location: "静岡県熱海市渚町26-26-26"),
            AlbumModel(postUserID: testFriendsUsers[7].id, title: "趣味の時間を楽しんだ日々", thumbnailImage: IMG.defaultAlbumImage, location: "兵庫県芦屋市浜芦屋町27-27-27"),
            AlbumModel(postUserID: testFriendsUsers[8].id, title: "思い出の写真集を作成する", thumbnailImage: IMG.defaultAlbumImage, location: "群馬県高崎市鶴見町28-28-28"),
            AlbumModel(postUserID: testFriendsUsers[9].id, title: "新年の目標を立てた日", thumbnailImage: IMG.defaultAlbumImage, location: "青森県青森市中央29-29-29"),
            AlbumModel(postUserID: testFriendsUsers[10].id, title: "アート展示会での発見", thumbnailImage: IMG.defaultAlbumImage, location: "福島県福島市栄町30-30-30"),
            AlbumModel(postUserID: testFriendsUsers[11].id, title: "友達との楽しい思い出の旅行", thumbnailImage: IMG.defaultAlbumImage, location: "富山県富山市桜町31-31-31"),
            AlbumModel(postUserID: testFriendsUsers[12].id, title: "家族イベントの思い出を残す", thumbnailImage: IMG.defaultAlbumImage, location: "愛媛県松山市三津浜32-32-32"),
            AlbumModel(postUserID: testFriendsUsers[13].id, title: "昔の思い出を振り返る", thumbnailImage: IMG.defaultAlbumImage, location: "秋田県秋田市御所野33-33-33"),
            AlbumModel(postUserID: testFriendsUsers[14].id, title: "特別な日の思い出アルバム", thumbnailImage: IMG.defaultAlbumImage, location: "岩手県盛岡市中央34-34-34"),
            AlbumModel(postUserID: testFriendsUsers[15].id, title: "思い出のコンサートを楽しむ", thumbnailImage: IMG.defaultAlbumImage, location: "新潟県新潟市中央区南笹口35-35-35"),
            AlbumModel(postUserID: testFriendsUsers[16].id, title: "友達との素晴らしい旅行記録", thumbnailImage: IMG.defaultAlbumImage, location: "香川県高松市栗林町36-36-36"),
            AlbumModel(postUserID: testFriendsUsers[17].id, title: "家族との楽しい時間を振り返る", thumbnailImage: IMG.defaultAlbumImage, location: "大分県大分市中央37-37-37"),
            AlbumModel(postUserID: testFriendsUsers[18].id, title: "楽しい遊園地での思い出", thumbnailImage: IMG.defaultAlbumImage, location: "鹿児島県鹿児島市中央38-38-38"),
            AlbumModel(postUserID: testFriendsUsers[19].id, title: "特別な日を祝った素晴らしい瞬間", thumbnailImage: IMG.defaultAlbumImage,location: "宮崎県宮崎市橘通39-39-39"),
            AlbumModel(postUserID: testFriendsUsers[10].id, title: "思い出のバカンスを楽しんだ日々", thumbnailImage: IMG.defaultAlbumImage, location: "沖縄県宮古島市中央40-40-40")
        ]
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        let dates: [Date] = [
            dateFormatter.date(from: "2023-10-31")!,
            dateFormatter.date(from: "2023-10-31")!,
            dateFormatter.date(from: "2023-11-01")!,
            dateFormatter.date(from: "2023-11-02")!
        ]

        
        testPageDatas = [
            PageModel(title: "誕生日パーティー", albumID: testAlbumDatas[0].id, description: "友達の誕生日を祝う楽しい日", date: dates[0], location: "東京都港区南青山1-1-1", friends: [testFriendsUsers[5].id, testFriendsUsers[9].id, testFriendsUsers[13].id, testFriendsUsers[17].id],publication:publicationPost.unPublicPost),
            PageModel(title: "家族旅行", albumID: testAlbumDatas[0].id, description: "家族での特別な旅行の思い出", date: dates[1], location: "東京都八王子市北野町2-2-2", friends: [testFriendsUsers[2].id, testFriendsUsers[8].id, testFriendsUsers[14].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "キャンプの思い出", albumID: testAlbumDatas[0].id, description: "友人と過ごしたキャンプの夜", date: dates[2], location: "千葉県君津市深見2631", friends: [testFriendsUsers[1].id, testFriendsUsers[6].id, testFriendsUsers[12].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "夏祭り", albumID: testAlbumDatas[0].id, description: "地元の夏祭りに参加した楽しい日", date: dates[3], location: "大阪府大阪市北区梅田3-3-3", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[11].id, testFriendsUsers[16].id],publication: publicationPost.publicPost),
            PageModel(title: "クリスマス", albumID: testAlbumDatas[4].id, description: "家族で過ごした特別なクリスマス", date: Date(), location: "神奈川県横浜市中区元町1-1-1", friends: [testFriendsUsers[3].id, testFriendsUsers[5].id, testFriendsUsers[10].id, testFriendsUsers[14].id],publication: publicationPost.unPublicPost),
            PageModel(title: "映画鑑賞", albumID: testAlbumDatas[5].id, description: "友達と見た感動的な映画", date: Date(), location: "東京都新宿区歌舞伎町2-2-2", friends: [testFriendsUsers[4].id, testFriendsUsers[8].id, testFriendsUsers[13].id, testFriendsUsers[17].id],publication: publicationPost.publicPost),
            PageModel(title: "ハイキング", albumID: testAlbumDatas[6].id, description: "自然の中でのリフレッシュ", date: Date(), location: "山梨県甲府市古府中町3-3-3", friends: [testFriendsUsers[2].id, testFriendsUsers[6].id, testFriendsUsers[11].id, testFriendsUsers[19].id],publication: publicationPost.unPublicPost),
            PageModel(title: "卒業式", albumID: testAlbumDatas[7].id, description: "感動の卒業式を迎えた日", date: Date(), location: "東京都文京区本郷3-3-3", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[12].id, testFriendsUsers[18].id],publication: publicationPost.publicPost),
            PageModel(title: "新年会", albumID: testAlbumDatas[8].id, description: "新年を祝う楽しい会", date: Date(), location: "愛知県名古屋市中村区名駅南1-1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[5].id, testFriendsUsers[10].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "お花見", albumID: testAlbumDatas[9].id, description: "桜の下で過ごした素晴らしい日", date: Date(), location: "東京都台東区上野公園1-1-1", friends: [testFriendsUsers[4].id, testFriendsUsers[8].id, testFriendsUsers[13].id, testFriendsUsers[15].id],publication: publicationPost.publicPost),
            PageModel(title: "友人の結婚式", albumID: testAlbumDatas[10].id, description: "友人の幸せを祝った日", date: Date(), location: "東京都新宿区西新宿6-6-6", friends: [testFriendsUsers[3].id, testFriendsUsers[6].id, testFriendsUsers[11].id, testFriendsUsers[14].id],publication: publicationPost.unPublicPost),
            PageModel(title: "温泉旅行", albumID: testAlbumDatas[11].id, description: "温泉でリフレッシュした思い出", date: Date(), location: "群馬県草津町草津496", friends: [testFriendsUsers[2].id, testFriendsUsers[9].id, testFriendsUsers[12].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "趣味の時間", albumID: testAlbumDatas[12].id, description: "趣味を楽しむための時間", date: Date(), location: "大阪府大阪市中央区心斎橋筋1-1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[5].id, testFriendsUsers[10].id, testFriendsUsers[15].id],publication: publicationPost.unPublicPost),
            PageModel(title: "ピクニック", albumID: testAlbumDatas[13].id, description: "公園で過ごした楽しい時間", date: Date(), location: "兵庫県神戸市中央区元町通2-2-2", friends: [testFriendsUsers[4].id, testFriendsUsers[8].id, testFriendsUsers[13].id, testFriendsUsers[18].id],publication: publicationPost.publicPost),
            PageModel(title: "スポーツ観戦", albumID: testAlbumDatas[14].id, description: "好きなチームの試合を観戦した日", date: Date(), location: "東京都江東区有明1-1-1", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[11].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "アート展", albumID: testAlbumDatas[15].id, description: "美術館でアートを楽しむ", date: Date(), location: "東京都台東区谷中7-7-7", friends: [testFriendsUsers[3].id, testFriendsUsers[6].id, testFriendsUsers[12].id, testFriendsUsers[17].id],publication: publicationPost.publicPost),
            PageModel(title: "読書会", albumID: testAlbumDatas[16].id, description: "本を読んで語り合った日", date: Date(), location: "北海道札幌市中央区大通西1-1", friends: [testFriendsUsers[2].id, testFriendsUsers[9].id, testFriendsUsers[13].id, testFriendsUsers[15].id],publication: publicationPost.unPublicPost),
            PageModel(title: "料理教室", albumID: testAlbumDatas[17].id, description: "料理を学ぶ楽しい時間", date: Date(), location: "京都府京都市中京区河原町通三条下ル大黒町1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[8].id, testFriendsUsers[10].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "バーベキュー", albumID: testAlbumDatas[18].id, description: "屋外での楽しいバーベキュー", date: Date(), location: "東京都練馬区大泉学園町6-6-6", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[11].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "市民マラソン", albumID: testAlbumDatas[19].id, description: "マラソンに参加して完走した日", date: Date(), location: "埼玉県さいたま市大宮区桜木町1-1-1", friends: [testFriendsUsers[3].id, testFriendsUsers[5].id, testFriendsUsers[14].id, testFriendsUsers[16].id],publication: publicationPost.publicPost),
            PageModel(title: "音楽フェス", albumID: testAlbumDatas[20].id, description: "友達と参加した音楽フェス", date: Date(), location: "東京都渋谷区代々木神園町2-2-2", friends: [testFriendsUsers[4].id, testFriendsUsers[8].id, testFriendsUsers[12].id, testFriendsUsers[17].id],publication: publicationPost.unPublicPost),
            PageModel(title: "夏休みの冒険", albumID: testAlbumDatas[21].id, description: "友達と過ごした夏休みの冒険", date: Date(), location: "静岡県浜松市中区鍛冶町2-2", friends: [testFriendsUsers[2].id, testFriendsUsers[6].id, testFriendsUsers[13].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "友人の誕生日", albumID: testAlbumDatas[22].id, description: "友人の誕生日を祝った日", date: Date(), location: "京都府京都市東山区祇園町南側2-2-2", friends: [testFriendsUsers[1].id, testFriendsUsers[5].id, testFriendsUsers[10].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "水族館の思い出", albumID: testAlbumDatas[23].id, description: "水族館での楽しいひととき", date: Date(), location: "神奈川県横浜市金沢区八景島", friends: [testFriendsUsers[0].id, testFriendsUsers[9].id, testFriendsUsers[11].id, testFriendsUsers[17].id],publication: publicationPost.publicPost),
            PageModel(title: "美術館巡り", albumID: testAlbumDatas[24].id, description: "新しいアートに触れる", date: Date(), location: "東京都目黒区駒場4-4-4", friends: [testFriendsUsers[3].id, testFriendsUsers[7].id, testFriendsUsers[12].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "海の日", albumID: testAlbumDatas[25].id, description: "海で遊んだ思い出", date: Date(), location: "神奈川県逗子市新宿1-1", friends: [testFriendsUsers[2].id, testFriendsUsers[8].id, testFriendsUsers[13].id, testFriendsUsers[14].id],publication: publicationPost.publicPost),
            PageModel(title: "ハロウィンパーティー", albumID: testAlbumDatas[26].id, description: "仮装して楽しんだハロウィン", date: Date(), location: "東京都渋谷区神南1-1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[6].id, testFriendsUsers[10].id, testFriendsUsers[19].id],publication: publicationPost.unPublicPost),
            PageModel(title: "ウィンタースポーツ", albumID: testAlbumDatas[27].id, description: "スキーやスノボーを楽しんだ日", date: Date(), location: "長野県長野市大字長野元善町2-2", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[14].id, testFriendsUsers[18].id],publication: publicationPost.publicPost),
            PageModel(title: "ビーチバーベキュー", albumID: testAlbumDatas[28].id, description: "夏のビーチでバーベキュー", date: Date(), location: "沖縄県那覇市久米2-2-2", friends: [testFriendsUsers[4].id, testFriendsUsers[9].id, testFriendsUsers[11].id, testFriendsUsers[15].id],publication: publicationPost.unPublicPost),
            PageModel(title: "アウトドアの冒険", albumID: testAlbumDatas[29].id, description: "自然の中での冒険", date: Date(), location: "岐阜県高山市奥飛騨温泉郷2-2", friends: [testFriendsUsers[3].id, testFriendsUsers[6].id, testFriendsUsers[12].id, testFriendsUsers[17].id],publication: publicationPost.publicPost),
            PageModel(title: "友人との新年会", albumID: testAlbumDatas[30].id, description: "友人たちと新年を迎えた日", date: Date(), location: "東京都江戸川区葛西臨海公園1-1", friends: [testFriendsUsers[2].id, testFriendsUsers[8].id, testFriendsUsers[13].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "芸術鑑賞", albumID: testAlbumDatas[31].id, description: "芸術作品を鑑賞した特別な日", date: Date(), location: "東京都中央区銀座5-5-5", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[10].id, testFriendsUsers[14].id],publication: publicationPost.publicPost),
            PageModel(title: "秋の遠足", albumID: testAlbumDatas[32].id, description: "秋の景色を楽しんだ遠足", date: Date(), location: "東京都府中市宮町1-1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[9].id, testFriendsUsers[11].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "冬の温泉旅行", albumID: testAlbumDatas[33].id, description: "冬の寒い日に温泉で温まった", date: Date(), location: "鹿児島県指宿市湯ノ浜5-5-5", friends: [testFriendsUsers[4].id, testFriendsUsers[6].id, testFriendsUsers[14].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "ハイキングとキャンプ", albumID: testAlbumDatas[34].id, description: "山中でのハイキングとキャンプ", date: Date(), location: "宮崎県西臼杵郡高千穂町押方1-1", friends: [testFriendsUsers[3].id, testFriendsUsers[8].id, testFriendsUsers[12].id, testFriendsUsers[15].id],publication: publicationPost.unPublicPost),
            PageModel(title: "春のピクニック", albumID: testAlbumDatas[35].id, description: "花見をしながらのんびり過ごした日", date: Date(), location: "東京都小金井市桜町2-2-2", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[13].id, testFriendsUsers[17].id],publication: publicationPost.publicPost),
            PageModel(title: "ランニング", albumID: testAlbumDatas[36].id, description: "健康的な朝のランニング", date: Date(), location: "東京都荒川区西日暮里1-1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[5].id, testFriendsUsers[10].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "夜の街を散策", albumID: testAlbumDatas[37].id, description: "美しい夜景を楽しみながらの散策", date: Date(), location: "東京都港区台場1-1", friends: [testFriendsUsers[2].id, testFriendsUsers[6].id, testFriendsUsers[11].id, testFriendsUsers[18].id],publication: publicationPost.publicPost),
            PageModel(title: "新しいレストラン", albumID: testAlbumDatas[38].id, description: "話題のレストランで友達と食事", date: Date(), location: "東京都渋谷区神宮前5-5-5", friends: [testFriendsUsers[4].id, testFriendsUsers[9].id, testFriendsUsers[14].id, testFriendsUsers[19].id],publication: publicationPost.unPublicPost),
            PageModel(title: "趣味の時間", albumID: testAlbumDatas[39].id, description: "好きな趣味に没頭した日", date: Date(), location: "東京都中央区日本橋3-3-3", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[12].id, testFriendsUsers[15].id],publication: publicationPost.publicPost),
            PageModel(title: "冬の雪遊び", albumID: testAlbumDatas[0].id, description: "友達と雪で遊んだ楽しい日", date: Date(), location: "北海道旭川市花咲町1-1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[8].id, testFriendsUsers[11].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "山登り", albumID: testAlbumDatas[1].id, description: "自然を満喫した山登りの日", date: Date(), location: "長野県松本市安曇4-4-4", friends: [testFriendsUsers[3].id, testFriendsUsers[6].id, testFriendsUsers[12].id, testFriendsUsers[15].id],publication: publicationPost.publicPost),
            PageModel(title: "サッカー試合", albumID: testAlbumDatas[2].id, description: "友達と参加したサッカー試合", date: Date(), location: "東京都渋谷区東3-3-3", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[13].id, testFriendsUsers[19].id],publication: publicationPost.unPublicPost),
            PageModel(title: "観光地巡り", albumID: testAlbumDatas[3].id, description: "有名な観光地を巡った旅", date: Date(), location: "京都府京都市左京区鞍馬2-2-2", friends: [testFriendsUsers[2].id, testFriendsUsers[9].id, testFriendsUsers[14].id, testFriendsUsers[18].id],publication: publicationPost.publicPost),
            PageModel(title: "海辺の散策", albumID: testAlbumDatas[4].id, description: "海辺を散策してリラックス", date: Date(), location: "神奈川県鎌倉市由比ガ浜5-5-5", friends: [testFriendsUsers[4].id, testFriendsUsers[8].id, testFriendsUsers[10].id, testFriendsUsers[17].id],publication: publicationPost.unPublicPost),
            PageModel(title: "美味しいレストラン", albumID: testAlbumDatas[5].id, description: "新しいレストランでの食事", date: Date(), location: "福岡県福岡市博多区中洲1-1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[6].id, testFriendsUsers[12].id, testFriendsUsers[16].id],publication: publicationPost.publicPost),
            PageModel(title: "釣り大会", albumID: testAlbumDatas[6].id, description: "湖で友達と釣りを楽しんだ", date: Date(), location: "滋賀県大津市本堅田4-4-4", friends: [testFriendsUsers[3].id, testFriendsUsers[5].id, testFriendsUsers[11].id, testFriendsUsers[14].id],publication: publicationPost.unPublicPost),
            PageModel(title: "スポーツクラブ", albumID: testAlbumDatas[7].id, description: "友達と一緒に汗を流した日", date: Date(), location: "東京都世田谷区上馬2-2-2", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[13].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "自然散策", albumID: testAlbumDatas[8].id, description: "自然の中をゆっくりと散歩した", date: Date(), location: "神奈川県横須賀市西浦賀5-5-5", friends: [testFriendsUsers[4].id, testFriendsUsers[9].id, testFriendsUsers[14].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "プールパーティー", albumID: testAlbumDatas[9].id, description: "プールでの楽しい時間", date: Date(), location: "沖縄県宜野湾市真志喜4-4-4", friends: [testFriendsUsers[2].id, testFriendsUsers[6].id, testFriendsUsers[11].id, testFriendsUsers[16].id],publication: publicationPost.publicPost),
            PageModel(title: "花火大会", albumID: testAlbumDatas[10].id, description: "美しい花火を友達と見た日", date: Date(), location: "東京都墨田区押上3-3-3", friends: [testFriendsUsers[1].id, testFriendsUsers[8].id, testFriendsUsers[12].id, testFriendsUsers[17].id],publication: publicationPost.unPublicPost),
            PageModel(title: "登山の挑戦", albumID: testAlbumDatas[11].id, description: "新しい山に登ったチャレンジ", date: Date(), location: "山梨県南都留郡鳴沢村鳴沢5-5-5", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[13].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "お寺巡り", albumID: testAlbumDatas[12].id, description: "歴史あるお寺を巡った一日", date: Date(), location: "奈良県奈良市奈良町6-6-6", friends: [testFriendsUsers[3].id, testFriendsUsers[9].id, testFriendsUsers[14].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "ゴルフ日和", albumID: testAlbumDatas[13].id, description: "友達とゴルフを楽しんだ", date: Date(), location: "千葉県千葉市緑区鎌取2-2-2", friends: [testFriendsUsers[2].id, testFriendsUsers[6].id, testFriendsUsers[11].id, testFriendsUsers[15].id],publication: publicationPost.publicPost),
            PageModel(title: "キャンプファイヤー", albumID: testAlbumDatas[14].id, description: "キャンプでの夜の思い出", date: Date(), location: "栃木県日光市中宮祠1-1", friends: [testFriendsUsers[4].id, testFriendsUsers[5].id, testFriendsUsers[10].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "文化祭", albumID: testAlbumDatas[15].id, description: "学校の文化祭での楽しい時間", date: Date(), location: "愛知県豊橋市広小路3-3-3", friends: [testFriendsUsers[1].id, testFriendsUsers[8].id, testFriendsUsers[14].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "冬のスポーツ", albumID: testAlbumDatas[16].id, description: "スキー場で過ごした日", date: Date(), location: "福島県郡山市熱海町1-1-1", friends: [testFriendsUsers[0].id, testFriendsUsers[6].id, testFriendsUsers[12].id, testFriendsUsers[17].id],publication: publicationPost.unPublicPost),
            PageModel(title: "友達とゲーム", albumID: testAlbumDatas[17].id, description: "友達と一緒にゲームで盛り上がった", date: Date(), location: "東京都練馬区豊玉北3-3-3", friends: [testFriendsUsers[3].id, testFriendsUsers[7].id, testFriendsUsers[11].id, testFriendsUsers[15].id],publication: publicationPost.publicPost),
            PageModel(title: "カフェ巡り", albumID: testAlbumDatas[18].id, description: "友達と一緒に新しいカフェを訪れた", date: Date(), location: "東京都世田谷区下北沢2-2-2", friends: [testFriendsUsers[2].id, testFriendsUsers[9].id, testFriendsUsers[13].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "大自然の中でキャンプ", albumID: testAlbumDatas[19].id, description: "自然の中でリラックスしたキャンプ", date: Date(), location: "富山県黒部市宇奈月温泉5-5-5", friends: [testFriendsUsers[1].id, testFriendsUsers[8].id, testFriendsUsers[10].id, testFriendsUsers[18].id],publication: publicationPost.publicPost),
            PageModel(title: "友人とのリゾート旅行", albumID: testAlbumDatas[20].id, description: "友人たちと一緒にリゾートでのんびり", date: Date(), location: "沖縄県石垣市石垣5-5-5", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[12].id, testFriendsUsers[19].id],publication: publicationPost.unPublicPost),
            PageModel(title: "キャンプと釣り", albumID: testAlbumDatas[21].id, description: "自然の中で釣りとキャンプを楽しんだ", date: Date(), location: "静岡県伊東市松原町4-4-4", friends: [testFriendsUsers[3].id, testFriendsUsers[6].id, testFriendsUsers[14].id, testFriendsUsers[17].id],publication: publicationPost.publicPost),
            PageModel(title: "美味しいカフェでブランチ", albumID: testAlbumDatas[22].id, description: "友人とおしゃれなカフェでブランチ", date: Date(), location: "大阪府大阪市中央区南船場3-3-3", friends: [testFriendsUsers[2].id, testFriendsUsers[5].id, testFriendsUsers[13].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "初日の出", albumID: testAlbumDatas[23].id, description: "新年の初日の出を見に行った", date: Date(), location: "鹿児島県指宿市湯ノ浜5-5-5", friends: [testFriendsUsers[1].id, testFriendsUsers[7].id, testFriendsUsers[10].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "サマーキャンプ", albumID: testAlbumDatas[24].id, description: "夏のキャンプで過ごした思い出", date: Date(), location: "山梨県北杜市大泉町2-2-2", friends: [testFriendsUsers[0].id, testFriendsUsers[8].id, testFriendsUsers[11].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "美術館巡り", albumID: testAlbumDatas[25].id, description: "友達とアートを楽しんだ日", date: Date(), location: "石川県金沢市本町6-6-6", friends: [testFriendsUsers[3].id, testFriendsUsers[9].id, testFriendsUsers[14].id, testFriendsUsers[15].id],publication: publicationPost.publicPost),
            PageModel(title: "友人との夜景", albumID: testAlbumDatas[26].id, description: "夜景スポットで友人たちと過ごした夜", date: Date(), location: "兵庫県神戸市中央区4-4-4", friends: [testFriendsUsers[4].id, testFriendsUsers[6].id, testFriendsUsers[12].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "友達と野球観戦", albumID: testAlbumDatas[27].id, description: "プロ野球の試合を友達と観戦", date: Date(), location: "福岡県北九州市小倉南区田原2-2-2", friends: [testFriendsUsers[2].id, testFriendsUsers[5].id, testFriendsUsers[13].id, testFriendsUsers[17].id],publication: publicationPost.publicPost),
            PageModel(title: "湖畔でのリラックス", albumID: testAlbumDatas[28].id, description: "湖畔で友人と一緒にリラックス", date: Date(), location: "長野県諏訪市湖畔5-5-5", friends: [testFriendsUsers[1].id, testFriendsUsers[8].id, testFriendsUsers[10].id, testFriendsUsers[19].id],publication: publicationPost.unPublicPost),
            PageModel(title: "バーベキュー", albumID: testAlbumDatas[29].id, description: "バーベキューを友人たちと楽しんだ日", date: Date(), location: "愛知県岡崎市岡町2-2-2", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[11].id, testFriendsUsers[16].id],publication: publicationPost.publicPost),
            PageModel(title: "温泉旅行", albumID: testAlbumDatas[30].id, description: "温泉でリラックスした休日", date: Date(), location: "群馬県渋川市伊香保町3-3-3", friends: [testFriendsUsers[4].id, testFriendsUsers[6].id, testFriendsUsers[14].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "友達とのショッピング", albumID: testAlbumDatas[31].id, description: "ショッピングで友人と楽しい時間", date: Date(), location: "東京都新宿区歌舞伎町1-1-1", friends: [testFriendsUsers[2].id, testFriendsUsers[5].id, testFriendsUsers[12].id, testFriendsUsers[15].id],publication: publicationPost.publicPost),
            PageModel(title: "ビーチでのひととき", albumID: testAlbumDatas[32].id, description: "ビーチでリラックスしたひととき", date: Date(), location: "神奈川県逗子市桜山1-1-1", friends: [testFriendsUsers[1].id, testFriendsUsers[9].id, testFriendsUsers[13].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "カラオケパーティー", albumID: testAlbumDatas[33].id, description: "カラオケで歌いながら盛り上がった日", date: Date(), location: "大阪府吹田市山田4-4-4", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[10].id, testFriendsUsers[19].id],publication: publicationPost.publicPost),
            PageModel(title: "スイーツ巡り", albumID: testAlbumDatas[34].id, description: "甘いスイーツをたくさん食べた日", date: Date(), location: "福岡県福岡市中央区天神2-2-2", friends: [testFriendsUsers[3].id, testFriendsUsers[6].id, testFriendsUsers[14].id, testFriendsUsers[17].id],publication: publicationPost.unPublicPost),
            PageModel(title: "アスレチック体験", albumID: testAlbumDatas[35].id, description: "アウトドアでアスレチックに挑戦", date: Date(), location: "神奈川県横浜市鶴見区市場3-3-3", friends: [testFriendsUsers[2].id, testFriendsUsers[8].id, testFriendsUsers[12].id, testFriendsUsers[18].id],publication: publicationPost.publicPost),
            PageModel(title: "ピクニック", albumID: testAlbumDatas[36].id, description: "公園でのんびりピクニック", date: Date(), location: "埼玉県さいたま市大宮区北袋町2-2-2", friends: [testFriendsUsers[1].id, testFriendsUsers[9].id, testFriendsUsers[10].id, testFriendsUsers[16].id],publication: publicationPost.unPublicPost),
            PageModel(title: "カフェでの読書", albumID: testAlbumDatas[37].id, description: "カフェでのんびり読書した時間", date: Date(), location: "京都府京都市中京区烏丸1-1-1", friends: [testFriendsUsers[0].id, testFriendsUsers[7].id, testFriendsUsers[14].id, testFriendsUsers[17].id],publication: publicationPost.publicPost),
            PageModel(title: "海水浴", albumID: testAlbumDatas[38].id, description: "夏の海での水遊び", date: Date(), location: "宮崎県宮崎市青島3-3-3", friends: [testFriendsUsers[4].id, testFriendsUsers[6].id, testFriendsUsers[11].id, testFriendsUsers[18].id],publication: publicationPost.unPublicPost),
            PageModel(title: "テラスでのカフェ", albumID: testAlbumDatas[39].id, description: "テラスのあるカフェでリラックス", date: Date(), location: "東京都港区六本木6-6-6", friends: [testFriendsUsers[3].id, testFriendsUsers[5].id, testFriendsUsers[13].id, testFriendsUsers[19].id],publication: publicationPost.unPublicPost)

        ]

        
        testPageImageDatas = [
            ImageModel(pageID: testPageDatas[0].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[1].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[2].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[3].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[4].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[5].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[6].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[7].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[8].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[9].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[10].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[11].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[12].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[13].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[14].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[15].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[16].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[17].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[18].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[19].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[20].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[21].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[22].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[23].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[24].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[25].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[26].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[27].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[28].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[29].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[30].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[31].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[32].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[33].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[34].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[35].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[36].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[37].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[38].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage]),
            ImageModel(pageID: testPageDatas[39].id, image: [IMG.defaultAlbumImage, IMG.defaultAlbumImage, IMG.defaultAlbumImage])
        ]

        for page in testPageDatas{
            for image in testPageImageDatas{
                if page.id == image.pageID{
                    for img in image.image{
                        page.images.append(img)
                    }
                }
            }
        }
        
        for album in testAlbumDatas{
            for page in testPageDatas{
                if album.id == page.albumID {
                    album.posts.append(page)
                }
            }
        }
        
        //friendのデータに関係するalbumを代入
        for friend in testFriendsUsers{
            for album in testAlbumDatas{
                if friend.id == album.userID{
                    friend.albums.append(album)
                }
            }
        }
        
        //ホストユーザに友達追加
        for friend in testFriendsUsers{
            hostUser.friends.append(friend.id)
        }
        
        
        
    }


    
    
    
}
