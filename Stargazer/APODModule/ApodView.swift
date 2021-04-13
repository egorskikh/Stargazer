//
//  ViewController.swift
//  Stargazer
//
//  Created by Егор Горских on 11.04.2021.
//

import UIKit

// for Presenter
protocol ApodViewInput {
    
}
protocol ApodViewOutput {
    
}

// for Router
protocol ViewType {
    
}

class ApodView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
}

extension ApodView: ApodViewInput, ApodViewOutput, ApodRouterInput {
    
}
