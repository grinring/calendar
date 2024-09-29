//
//  MainTabBarController.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/09/27.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        configureTabBar()
    }
}

// MARK: - Setup ROOT View Controllers
extension MainTabBarController {
    
    private func createNavController(for rootViewController: UIViewController,
                                     title: String,
                                     image: UIImage?,
                                     tag: Int) -> UINavigationController {
        
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem = UITabBarItem(title: title, image: image, tag: tag)
        return navController
    }
    
    func setupViewControllers() {
        let searchNavController = createNavController(for: SearchRootViewController(),
                                                      title: "探す",
                                                      image: CustomImage.tab00,
                                                      tag: 0)
        
        let omoideNavController = createNavController(for: OmoideRootViewController(),
                                                      title: "おもいで",
                                                      image: CustomImage.tab01,
                                                      tag: 1)
        
        let todaysNavController = createNavController(for: ScheduleRootViewController(),
                                                      title: "今日",
                                                      image: CustomImage.tab02,
                                                      tag: 2)
        
        let scheduleNavController = createNavController(for: CalendarRootViewController(),
                                                        title: "カレンダー",
                                                        image: CustomImage.tab03,
                                                        tag: 3)
        
        let settingNavController = createNavController(for: SettingRootViewController(),
                                                       title: "設定",
                                                       image: CustomImage.tab04,
                                                       tag: 4)
        
        viewControllers = [searchNavController, omoideNavController,
                           todaysNavController, scheduleNavController,
                           settingNavController]
    }
}

// MARK: - Configure Tab Bar Appearance
extension MainTabBarController {
    
    func configureTabBar() {
        tabBar.tintColor = Col.accent
        tabBar.unselectedItemTintColor = UIColor.systemGray
        tabBar.backgroundColor = Col.defaultBackground ?? .systemBackground
        
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.systemGray.cgColor
    }
}
