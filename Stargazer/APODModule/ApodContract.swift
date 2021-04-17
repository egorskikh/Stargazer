//
//  ApodContract.swift
//  Stargazer
//
//  Created by Егор Горских on 14.04.2021.
//

import UIKit

// View -> Presenter
protocol ApodViewProtocol {
    var presenter: ApodPresenterProtocol { get set }
}

protocol ApodPresenterProtocol: class {
    var view: ApodViewProtocol? { get set }
    var interactor: ApodInteractorProtocol? { get set }
    var router: ApodRouterWireframeProtocol? { get set }
    
}

protocol ApodInteractorProtocol {
    var output: ApodInteractorOutputProtocol? { get set }
    
    func fetchApod()
}

protocol ApodInteractorOutputProtocol {
    func apodFetched(_ apod: ApodEntity)
}

// Presenter -> Router
protocol ApodRouterWireframeProtocol {
    static func assembleModule() -> UIViewController
}
