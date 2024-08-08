//
//  SetupCollectionView.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/08/07.
//

import Foundation
import UIKit

extension ViewController{
    
    //MARK: - UICollectionView Setup
    
    internal func setupCollectionViewLayout() {
        let collectionViewSize = (
            width: dayCollectionView.frame.size.width,
            height: dayCollectionView.frame.size.height
        )
        let totalOfSpacesBetweenCells = collectionViewSize.width * 0.1
        let spaceBetweenCells = totalOfSpacesBetweenCells / 6

        let cellWidth = (collectionViewSize.width - totalOfSpacesBetweenCells) / 7
        let cellHeight = cellWidth * (19 / 13)
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        flowLayout.minimumInteritemSpacing = spaceBetweenCells
        flowLayout.scrollDirection = .horizontal

        dayCollectionView.collectionViewLayout = flowLayout
    }
    
}
