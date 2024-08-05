//
//  tiimeCalcModel.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/08/05.
//

import Foundation

struct CalendarModel{
    
    static func createModel(year:Int,month:Int) -> [(Int,String)]?{
        
        var data:[(day:Int,weekday:String)] = []
        
        let calendar = Calendar.current
        var components = DateComponents(year:year,month:month)
        guard let startDateOfMonth = calendar.date(from: components) else { return nil }
        guard let range = calendar.range(of: .day, in: .month, for: startDateOfMonth) else { return nil }
        for day in range{
            components.day = day
            if let date = calendar.date(from: components){
                let weekdayFormatter = DateFormatter()
                weekdayFormatter.dateFormat = "EEEE"
                let weekday = weekdayFormatter.string(from: date)
                data.append((day: day, weekday: weekday))
            } else { continue }
        }
        return data
    }
}

