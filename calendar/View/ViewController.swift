//
// ※internal
//  ViewController.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/08/04.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    var todayData: (year: Int, month: Int, day: Int, weekday: String)!
    var calendarData: [(day: Int, weekday: String)]!
    var spiltDataInSevenDaysCalendarData: [[(day: Int, weekday: String)]]!

    private let flowLayout = UICollectionViewFlowLayout()
    private var isViewVisible = false
    private var pickerView: UIView!
    private let picker = UIPickerView()
    private var tapGesture: UITapGestureRecognizer?
    private var currentPickerData: [Int] = []
    private var currentMonthData: [(year: Int, month: Int)]!

    private let monthData = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    private var yearData: [Int] {
        return Array(2000..<2100)
    }

    

    // MARK: - IBOutlets

    @IBOutlet weak var yearButton: UIButton!
    @IBOutlet weak var monthButton: UIButton!
    @IBOutlet weak var dayCollectionView: UICollectionView!

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("button:\(yearButton.frame.origin.y)")

        configureInitialData()
        configureCollectionView()
        configurePickerView()
    }

    // MARK: - Configuration Methods

    private func configureInitialData() {
        todayData = CalendarModel.fideOutTodayData()
        calendarData = CalendarModel.createModel(year: todayData.year, month: todayData.month)
        spiltDataInSevenDaysCalendarData = CalendarModel.splitDateIntoSections(data: calendarData)
    }

    //MARK: - UICollectionView Setup
    private func configureCollectionView() {
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

    private func configurePickerView() {
        picker.dataSource = self
        picker.delegate = self
    }

    // MARK: - Actions (UIPicker)

    @IBAction func yearButtonPressed(_ sender: UIButton) {
        setupPickerData(type: .year)
        handleButtonPress(button: sender, type: .year)
    }

    @IBAction func monthButtonPressed(_ sender: UIButton) {
        setupPickerData(type: .month)
        handleButtonPress(button: sender, type: .month)
    }

    // MARK: - UIPickerView Setup

    private enum PickerType {
        case year
        case month
    }
    
    private func setupPickerData(type: PickerType){
        switch type{
        case .year:
            currentPickerData = yearData
        case .month:
            currentPickerData = monthData
        }
    }

    private func handleButtonPress(button: UIButton, type: PickerType) {
        isViewVisible.toggle()
        if isViewVisible {
            setupPickerView(button: button, type: type)
            closeViewWithTapGuesture()
        } else {
            pickerView.isHidden = true
            if let tapGesture = tapGesture{
                view.removeGestureRecognizer(tapGesture)
                self.tapGesture = nil //解放
            }
        }
    }
    
    private func closeViewWithTapGuesture(){
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        if let tapGesture = tapGesture{
            view.addGestureRecognizer(tapGesture)
        }
    }
    
    @objc func handleTap(_ sender:UITapGestureRecognizer){
        let tapLocation = sender.location(in: view)
        if !pickerView.frame.contains(tapLocation){
            pickerView.isHidden = true
        }
    }
    
    
    // Viewで囲まれたUIPickerを設置する
    private func setupPickerView(button: UIButton, type: PickerType) {
        setupPickerViewContainer(button: button)
        setupPickerPosition()
        configurePickerAppearance()

        switch type {
        case .year:
            picker.selectRow(todayData.year, inComponent: 0, animated: false)
        case .month:
            picker.selectRow(todayData.month, inComponent: 0, animated: false)
        }
    }
    
    // UIPickerをrapするViewの設定
    private func setupPickerViewContainer(button: UIButton) {
        //buttonの座標(superViewに対しての位置)からViewConctollerの座標(ViewControllerに対しての位置)に変更し、代入
        guard let buttonFrame = button.superview?.convert(button.frame, to: self.view) else {
            return
        }
        pickerView = UIView(frame: CGRect(
            x: buttonFrame.minX,
            y: buttonFrame.maxY + 10,
            width: view.bounds.size.width * 0.5,
            height: 200
            // ViewController左上を起点とするbutton左上の座標＋ボタンのフレーム幅＋余白
            // y: buttonFrame.origin.y + button.frame.height + 10 ,
        ))
        pickerView.backgroundColor = UIColor.lightGray
        self.view.addSubview(pickerView)
    }

    // rapされたviewのどの位置にUIPickerを設置するか
    private func setupPickerPosition() {
        let pickerWidth = pickerView.bounds.size.width * 0.95
        let pickerHeight = pickerView.bounds.size.height * 0.95
        picker.frame = CGRect(
            x: (pickerView.bounds.size.width - pickerWidth) / 2,
            y: (pickerView.bounds.size.height - pickerHeight) / 2,
            width: pickerWidth,
            height: pickerHeight
        )
        pickerView.addSubview(picker)
    }

    // UIPickerの外観の設定
    private func configurePickerAppearance() {
        picker.backgroundColor = UIColor.white
        picker.layer.borderWidth = 1.0
        picker.layer.borderColor = UIColor.red.cgColor
    }
    
}

// MARK: - UICollectionViewDataSource

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

// MARK: - UICollectionViewDelegate

extension ViewController: UICollectionViewDelegate {
}

// MARK: - UIPickerViewDataSource & UIPickerViewDelegate

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currentPickerData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print(row)
        return String(currentPickerData[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if currentPickerData[row] > 999 {
            yearButton.setTitle(String(currentPickerData[row]), for: .normal)
        } else if currentPickerData[row] <= 999 {
            monthButton.setTitle(String(currentPickerData[row]), for: .normal)
        }else {
            yearButton.setTitle("-", for: .normal)
            monthButton.setTitle("-", for: .normal)
        }
    }
}
