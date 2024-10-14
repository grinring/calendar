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
    
    static let friend1 = UserModel(firstName: "追加", lastName: "太郎", userIcon: IMG.aFriend)
    static let friend2 = UserModel(firstName: "追加", lastName: "太郎", userIcon: IMG.aFriend)
    
    init(){
        hostUser = UserModel(firstName: "辻", lastName: "倫太郎", userIcon: IMG.aFriend)
        
        testFriendsUsers = [
            UserModel(firstName: "鈴木", lastName: "太郎", userIcon: IMG.aFriend),
            UserModel(firstName: "田中", lastName: "花子", userIcon: IMG.aFriend),
            UserModel(firstName: "佐藤", lastName: "次郎", userIcon: IMG.aFriend),
            UserModel(firstName: "高橋", lastName: "一郎", userIcon: IMG.aFriend),
            UserModel(firstName: "渡辺", lastName: "美咲", userIcon: IMG.aFriend),
            UserModel(firstName: "伊藤", lastName: "健太", userIcon: IMG.aFriend),
            UserModel(firstName: "山本", lastName: "彩花", userIcon: IMG.aFriend),
            UserModel(firstName: "中村", lastName: "大輔", userIcon: IMG.aFriend),
            UserModel(firstName: "小林", lastName: "恵理", userIcon: IMG.aFriend),
            UserModel(firstName: "加藤", lastName: "翔太", userIcon: IMG.aFriend),
            UserModel(firstName: "吉田", lastName: "直美", userIcon: IMG.aFriend),
            UserModel(firstName: "山田", lastName: "雄大", userIcon: IMG.aFriend),
            UserModel(firstName: "石井", lastName: "紗季", userIcon: IMG.aFriend),
            UserModel(firstName: "森田", lastName: "晴香", userIcon: IMG.aFriend),
            UserModel(firstName: "岡田", lastName: "真也", userIcon: IMG.aFriend),
            UserModel(firstName: "清水", lastName: "理恵", userIcon: IMG.aFriend),
            UserModel(firstName: "松本", lastName: "佳代", userIcon: IMG.aFriend),
            UserModel(firstName: "長谷川", lastName: "一美", userIcon: IMG.aFriend),
            UserModel(firstName: "藤田", lastName: "大和", userIcon: IMG.aFriend),
            UserModel(firstName: "黒田", lastName: "恭子", userIcon: IMG.aFriend)
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

        
        testPageDatas = [
            PageModel(title: "誕生日パーティー", albumID: testAlbumDatas[0].id, description: "友達の誕生日を祝う楽しい日", date: Date(), location: "東京都港区南青山1-1-1"),
            PageModel(title: "家族旅行", albumID: testAlbumDatas[1].id, description: "家族での特別な旅行の思い出", date: Date(), location: "東京都八王子市北野町2-2-2"),
            PageModel(title: "キャンプの思い出", albumID: testAlbumDatas[2].id, description: "友人と過ごしたキャンプの夜", date: Date(), location: "千葉県君津市深見2631"),
            PageModel(title: "夏祭り", albumID: testAlbumDatas[3].id, description: "地元の夏祭りに参加した楽しい日", date: Date(), location: "大阪府大阪市北区梅田3-3-3"),
            PageModel(title: "クリスマス", albumID: testAlbumDatas[4].id, description: "家族で過ごした特別なクリスマス", date: Date(), location: "神奈川県横浜市中区元町1-1-1"),
            PageModel(title: "映画鑑賞", albumID: testAlbumDatas[5].id, description: "友達と見た感動的な映画", date: Date(), location: "東京都新宿区歌舞伎町2-2-2"),
            PageModel(title: "ハイキング", albumID: testAlbumDatas[6].id, description: "自然の中でのリフレッシュ", date: Date(), location: "山梨県甲府市古府中町3-3-3"),
            PageModel(title: "卒業式", albumID: testAlbumDatas[7].id, description: "感動の卒業式を迎えた日", date: Date(), location: "東京都文京区本郷3-3-3"),
            PageModel(title: "新年会", albumID: testAlbumDatas[8].id, description: "新年を祝う楽しい会", date: Date(), location: "愛知県名古屋市中村区名駅南1-1-1"),
            PageModel(title: "お花見", albumID: testAlbumDatas[9].id, description: "桜の下で過ごした素晴らしい日", date: Date(), location: "東京都台東区上野公園1-1-1"),
            PageModel(title: "友人の結婚式", albumID: testAlbumDatas[10].id, description: "友人の幸せを祝った日", date: Date(), location: "東京都新宿区西新宿6-6-6"),
            PageModel(title: "温泉旅行", albumID: testAlbumDatas[11].id, description: "温泉でリフレッシュした思い出", date: Date(), location: "群馬県草津町草津496"),
            PageModel(title: "趣味の時間", albumID: testAlbumDatas[12].id, description: "趣味を楽しむための時間", date: Date(), location: "大阪府大阪市中央区心斎橋筋1-1-1"),
            PageModel(title: "ピクニック", albumID: testAlbumDatas[13].id, description: "公園で過ごした楽しい時間", date: Date(), location: "兵庫県神戸市中央区元町通2-2-2"),
            PageModel(title: "スポーツ観戦", albumID: testAlbumDatas[14].id, description: "好きなチームの試合を観戦した日", date: Date(), location: "東京都江東区有明1-1-1"),
            PageModel(title: "アート展", albumID: testAlbumDatas[15].id, description: "美術館でアートを楽しむ", date: Date(), location: "東京都台東区谷中7-7-7"),
            PageModel(title: "読書会", albumID: testAlbumDatas[16].id, description: "本を読んで語り合った日", date: Date(), location: "北海道札幌市中央区大通西1-1"),
            PageModel(title: "料理教室", albumID: testAlbumDatas[17].id, description: "料理を学ぶ楽しい時間", date: Date(), location: "京都府京都市中京区河原町通三条下ル大黒町1-1"),
            PageModel(title: "バーベキュー", albumID: testAlbumDatas[18].id, description: "屋外での楽しいバーベキュー", date: Date(), location: "東京都練馬区大泉学園町6-6-6"),
            PageModel(title: "市民マラソン", albumID: testAlbumDatas[19].id, description: "マラソンに参加して完走した日", date: Date(), location: "埼玉県さいたま市大宮区桜木町1-1-1"),
            PageModel(title: "音楽フェス", albumID: testAlbumDatas[20].id, description: "友達と参加した音楽フェス", date: Date(), location: "東京都渋谷区代々木神園町2-2-2"),
            PageModel(title: "夏休みの思い出", albumID: testAlbumDatas[21].id, description: "思い出深い夏休みを過ごした日", date: Date(), location: "静岡県浜松市中区砂山町3-3-3"),
            PageModel(title: "旅行の計画", albumID: testAlbumDatas[22].id, description: "次の旅行の計画を立てた日", date: Date(), location: "東京都豊島区池袋1-1-1"),
            PageModel(title: "特別なイベント", albumID: testAlbumDatas[23].id, description: "家族で参加した特別なイベント", date: Date(), location: "福岡県福岡市博多区博多駅前3-3-3"),
            PageModel(title: "DIYプロジェクト", albumID: testAlbumDatas[24].id, description: "自宅でのDIYを楽しんだ日", date: Date(), location: "神奈川県川崎市中原区新丸子町2-2-2"),
            PageModel(title: "友人との集まり", albumID: testAlbumDatas[25].id, description: "友人たちとの楽しい集まり", date: Date(), location: "東京都江戸川区船堀3-3-3"),
            PageModel(title: "映画鑑賞会", albumID: testAlbumDatas[26].id, description: "映画を見ながら過ごした日", date: Date(), location: "愛知県名古屋市千種区今池5-5-5"),
            PageModel(title: "マルシェ訪問", albumID: testAlbumDatas[27].id, description: "地元のマルシェで楽しんだ日", date: Date(), location: "広島県広島市中区基町2-2-2"),
            PageModel(title: "バレーボール大会", albumID: testAlbumDatas[28].id, description: "地域のバレーボール大会に参加", date: Date(), location: "神奈川県厚木市旭町1-1-1"),
            PageModel(title: "サイクリング", albumID: testAlbumDatas[29].id, description: "友人とサイクリングを楽しんだ日", date: Date(), location: "東京都世田谷区三軒茶屋1-1-1"),
            PageModel(title: "フィットネスチャレンジ", albumID: testAlbumDatas[30].id, description: "健康のためのフィットネスチャレンジ", date: Date(), location: "埼玉県川口市川口1-1-1"),
            PageModel(title: "冬の雪遊び", albumID: testAlbumDatas[31].id, description: "雪の中で遊んだ楽しい日", date: Date(), location: "北海道札幌市北区北大通2-2-2"),
            PageModel(title: "美術館巡り", albumID: testAlbumDatas[32].id, description: "アートを楽しむための美術館巡り", date: Date(), location: "愛知県名古屋市中村区名駅4-4-4"),
            PageModel(title: "サプライズパーティー", albumID: testAlbumDatas[33].id, description: "友人のためのサプライズパーティー", date: Date(), location: "大阪府大阪市北区大淀南2-2-2"),
            PageModel(title: "古着屋巡り", albumID: testAlbumDatas[34].id, description: "古着屋での掘り出し物探し", date: Date(), location: "東京都中野区中野5-5-5"),
            PageModel(title: "仲間とのハイキング", albumID: testAlbumDatas[35].id, description: "仲間とハイキングを楽しむ", date: Date(), location: "長野県松本市安曇1-1-1"),
            PageModel(title: "街歩き", albumID: testAlbumDatas[36].id, description: "新しい街を探索する日", date: Date(), location: "東京都新宿区新宿3-3-3"),
            PageModel(title: "友達とのディナー", albumID: testAlbumDatas[37].id, description: "友達と楽しいディナーを過ごした日", date: Date(), location: "神奈川県横浜市港北区新横浜2-2-2"),
            PageModel(title: "公園でのピクニック", albumID: testAlbumDatas[38].id, description: "公園で過ごした楽しいピクニック", date: Date(), location: "埼玉県さいたま市見沼区大字南中丸463"),
            PageModel(title: "カラオケナイト", albumID: testAlbumDatas[39].id, description: "友人たちとカラオケを楽しんだ日", date: Date(), location: "東京都豊島区池袋2-2-2"),
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
                    page.images.append(image)
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
