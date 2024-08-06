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
                weekdayFormatter.dateFormat = "EEE"
                let weekday = weekdayFormatter.string(from: date)
                data.append((day: day, weekday: weekday))
            } else { continue }
        }
        return data
    }
    
    static func splitDateIntoSections(data:[(day:Int,weekday:String)]) -> [[(day:Int,weekday:String)]]{
        let numberOfDaysInWeek = 7
        var sections:[[(day:Int,weekday:String)]] = []
        var currentSection:[(day:Int,weekday:String)] = []
        
        for (index,item) in data.enumerated(){
            currentSection.append(item)
            if (index+1)%numberOfDaysInWeek == 0{
                sections.append(currentSection)
                currentSection = []
            }
        }
        
        if !currentSection.isEmpty{
            sections.append(currentSection)
        }
        return sections
    }
}

