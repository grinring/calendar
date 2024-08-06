//
//  ViewController.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/08/04.
//

import UIKit

class ViewController: UIViewController {

    var calendarData:[(day:Int,weekday:String)]!
    var spiltDataInSevenDaysCalendarData:[[(day:Int,weekday:String)]]!
    
    @IBOutlet weak var dayCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendarData = CalendarModel.createModel(year: 2024, month: 2)
        spiltDataInSevenDaysCalendarData = CalendarModel.splitDateIntoSections(data: calendarData)
        dayCollectionView.delegate = self
        dayCollectionView.dataSource = self
        dayCollectionView.register(UINib(nibName: "DayCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        
        let layout = UICollectionViewFlowLayout()
        let (cellWidth,cellHeight) = cellSizeCalc()
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        layout.minimumLineSpacing = (Double(dayCollectionView.frame.width)-10)*0.15 / 6
        layout.scrollDirection = .horizontal
        dayCollectionView.collectionViewLayout = layout
    }
    
    private func cellSizeCalc() -> (Double,Double){
        //autoLayoutで制約したcollectionViewとsafeAreaの左右につけた制約5point*2=10point
        let collectionViewWidth = Double(dayCollectionView.frame.width)-10
        //collectionViewに対して85%をcellに割り当てる。
        let cellWidth = (collectionViewWidth*0.85)/7
        //cellのアスペクト比率は13:19
        let cellHeight = cellWidth*(19/13)
        return (width: cellWidth, height: cellHeight)
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

extension ViewController : UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
}

