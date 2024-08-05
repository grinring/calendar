//
//  ViewController.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/08/04.
//

import UIKit

class ViewController: UIViewController {

    var calendarData:[(day:Int,weekday:String)]!
    
    @IBOutlet weak var dayCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendarData = CalendarModel.createModel(year: 2024, month: 2)
        
        dayCollectionView.dataSource = self
        dayCollectionView.register(UINib(nibName: "DayCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
    }
}

extension ViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        calendarData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dayCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        if let cell = cell as? DayCollectionViewCell{
            let dayValue = calendarData[indexPath.row].day
            let weekdayValue = calendarData[indexPath.row].weekday
            cell.setCell(day: dayValue, weekday: weekdayValue)
        }
        return cell
    }
    
    
}

