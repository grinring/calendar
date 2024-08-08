//
//  SetupCollectionCell.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/08/07.
//

import UIKit

extension ViewController {

    // MARK: - Configuration Methods

    internal func configureCollectionView() {
        dayCollectionView.delegate = self
        dayCollectionView.dataSource = self
        dayCollectionView.register(UINib(nibName: "DayCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        setupCollectionViewLayout()
        dayCollectionView.reloadData()
    }

    private func setupCollectionViewLayout() {
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

extension ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return calendarData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dayCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DayCollectionViewCell
        let dayValue = calendarData[indexPath.row].day
        let weekdayValue = calendarData[indexPath.row].weekday
        cell.setCell(day: dayValue, weekday: weekdayValue)
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    // Implement UICollectionViewDelegate methods if needed
}

