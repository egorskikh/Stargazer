//
//  ViewController.swift
//  Stargazer
//
//  Created by Егор Горских on 11.04.2021.
//

import UIKit

// for Router
protocol ViewType {
    
}
// for Presenter
protocol ApodViewInput {
    
}
protocol ApodViewOutput {
    
}


class ApodView: UIViewController {
    
    // MARK: - Properties
    
    static var titleLbl: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Hello, an ordinary guy from the outskirts of Moscow."
        return label
    }()
    
    static var dataLbl: UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "13.04.21"
        return label
    }()
    
    static var copyrightLbl: UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Copyright: Egor Gorskikh"
        return label
    }()
    
    static var apodImgVw: UIImageView = {
        var imageView = UIImageView()
        return imageView
    }()
    
    static var descriptionTxtVw: UITextView = {
        var textView = UITextView()
        textView.isEditable = false
        textView.textAlignment = .center
        textView.font = UIFont.systemFont(ofSize: 17.0)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        return textView
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraint()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Setup Constraint
    
    func setupConstraint() {
        view.addSubview(ApodView.titleLbl)
        view.addSubview(ApodView.dataLbl)
        view.addSubview(ApodView.copyrightLbl)
      //  view.addSubview(ApodView.apodImgVw)
      //  view.addSubview(ApodView.descriptionTxtVw)
        
        NSLayoutConstraint.activate([
            // Will later be a stack
            ApodView.titleLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            ApodView.titleLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            ApodView.titleLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            
            ApodView.dataLbl.topAnchor.constraint(equalTo: ApodView.titleLbl.bottomAnchor, constant: 10),
            ApodView.dataLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            ApodView.dataLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            
            ApodView.copyrightLbl.topAnchor.constraint(equalTo: ApodView.dataLbl.bottomAnchor, constant: 10),
            ApodView.copyrightLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            ApodView.copyrightLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            // Will later be a stack
            
        ])
    }
    
}

extension ApodView: ApodViewInput, ApodViewOutput, ApodRouterInput {
    
}
