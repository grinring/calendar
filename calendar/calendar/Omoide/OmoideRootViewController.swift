//
//  OmoideViewController.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/27.
//

import UIKit

class OmoideRootViewController: UIViewController {
    
    var omoideRootModel:OmoideRootModel? {
        didSet{
            print("set")
        }
    }
    
    private(set) lazy var omoideRootView = OmoideRootView()
    
    override func loadView(){
        self.view = omoideRootView
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        configureNavigationBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    
    func configureNavigationBar(){
        self.title = "おもいでアルバム"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = Col.defaultBackground ?? .systemBackground
        appearance.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: Col.defaultCharacter ?? .tintColor]
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
    }

}
