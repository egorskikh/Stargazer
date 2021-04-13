//
//  TabBarController.swift
//  Stargazer
//
//  Created by Егор Горских on 12.04.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    func setupTabBar() {
        let apodVC = ApodView()
        let neoWsVC = NeoWsVC()
        let marsRoverPhotosVC = MarsRoverPhotosVC()
        let inSightVC = InSightVC()
        
        viewControllers = [
            TabBarController.generateNavigationController(rootVC: apodVC, title: TabBarTitle.apod.rawValue, systemImage: "arrow.up.heart.fill"),
            TabBarController.generateNavigationController(rootVC: neoWsVC, title: TabBarTitle.neoWs.rawValue, systemImage: "arrow.up.heart.fill"),
            TabBarController.generateNavigationController(rootVC: marsRoverPhotosVC, title: TabBarTitle.marsRoverPhotos.rawValue, systemImage: "arrow.up.heart.fill"),
            TabBarController.generateNavigationController(rootVC: inSightVC, title: TabBarTitle.inSight.rawValue, systemImage: "arrow.up.heart.fill")
            
        ]
    }
    
}

extension TabBarController {
    
    static func generateNavigationController(rootVC: UIViewController,
                                             title: String,
                                             systemImage: String) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootVC)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = UIImage(systemName: systemImage)
        
        return navigationVC
    }
    
}
