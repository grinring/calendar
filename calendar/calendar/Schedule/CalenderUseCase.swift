//
//  CalenderUseCase.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/04.
//

import Foundation
import UIKit

protocol CalendarLogic {
    func dateManager(year:Int,month:Int)
    func numberOfWeek(year:Int,month:Int)
}

//class CalenderUseCase:CalendarLogic {
//    var responseForCalender: ResponseForCalendar?
//    
//    private let daysPerWeek = 7
//    private let isLeapYear = { (year:Int) in
//        year%400 == 0 || ( year%4 == 0 && year%100 != 0 )
//    }
//    private let zellerCalculator = { (year:Int,month:Int,day:Int) in
//        ( year + year/4 - year/100 + year/400 + ( 13*month+8 )/5 + day )%7
//    }
//    
//    func dateManager(year:Int,month:Int) {
//        
//        
//        
//    }
//    
//    func dateManager(year: Int, month: Int) {
//        let firstDayOfWeek = dayOfWeek(year: year, month: month, day: 1)
//        let numberOfCell = numberOfWeek(year: year, month: month) * daysPerWeek
//    }
//    
//    func numberOfWeek(year: Int, month: Int) {
//        <#code#>
//    }
//    
//}

//extension CalenderUseCase{
//    //指定した年月日における曜日。日曜を０として木曜を6返す
//    private func dayOfWeek(year:Int,month:Int,day:Int) -> Int{
//        var year = year
//        var month = month
//        if month == 1 || month == 2 {
//            year -= 1
//            month += 12
//        }
//        return zellerCalculator(year, month, day)
//    }
//    
//    //引数として指定した年月はカレンダーから見て何週あるのか返す関数
//    private func countOfWeeks(_ year:Int,_ month:Int)->Int{
//        if checkSixWeeks(year: year, month: month){
//            return 4
//        }else if checkSixWeeks(year: year, month: month){
//            return 6
//        }else{
//            return 5
//        }
//    }
//    
//    //引数で指定した年,月における所有日数を返す関数.閏年を考慮するため、引数にyearをとる
//    private func countOfDays(year:Int,month:Int)->Int{
//        var monthMaxDay = [1:31,2:28,3:31,4:30,5:31,6:30,7:31,8:31,9:30,10:31,11:30,12:31]
//        if month == 2 && isLeapYear(year) {
//            monthMaxDay.updateValue(29, forKey: 2)
//        }
//        return monthMaxDay[month]!
//    }
//    
//    //引数で指定した年月は当該月当たり4週なのか返す関数
//    private func checkFourWeeks(year:Int,month:Int)->Bool{
//        let firstDayOfWeek = dayOfWeek(year: year, month: month, day: 1)
//        return !isLeapYear(year) && month == 2 && (firstDayOfWeek == 0)
//    }
//    
//    //引数で指定した年月は当該月あたり6週なのか返す関数
//    private func checkSixWeeks(year:Int,month:Int)->Bool{
//        let firstDayOfWeek = dayOfWeek(year: year, month: month, day: 1)
//        let days = countOfDays(year: year, month: month)
//        return (firstDayOfWeek == 6 && days == 30) || (firstDayOfWeek >= 5 && days == 31)
//    }
//    
//}
