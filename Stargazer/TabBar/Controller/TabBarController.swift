//
//  TabBarController.swift
//  Stargazer
//
//  Created by Егор Горских on 12.04.2021.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barStyle = .black
        setupTabBar()
    }
    
    private func setupTabBar() {
        let apodVC = ApodVC()
        
        viewControllers = [
            TabBarController.generateNavigationController(rootVC: apodVC, title: TabBarTitle.apod.rawValue, systemImage: "moon.stars"),
        ]
    }
    
}

private extension TabBarController {
    
    static func generateNavigationController(rootVC: UIViewController,
                                             title: String,
                                             systemImage: String) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootVC)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = UIImage(systemName: systemImage)
        
        return navigationVC
    }
    
}
