//
//  DayCollectionViewCell.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/08/05.
//

import UIKit

class DayCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weekdayLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(day:Int,weekday:String){
        dayLabel.text = String(day)
        weekdayLabel.text = weekday
    }
    
    
    
    

}
