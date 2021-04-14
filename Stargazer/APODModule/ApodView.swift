//
//  ViewController.swift
//  Stargazer
//
//  Created by Егор Горских on 11.04.2021.
//

import UIKit

class ApodViewController: UIViewController {
    
    // MARK: - Properties
    static var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
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
    
    static var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setuoScrollView()
        setupConstraint()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Setup ScrollView
    
    func setuoScrollView() {
        
    }
    
    
    
    
    // MARK: - Setup Constraint
    
    func setupConstraint() {
       // view.addSubview(ApodView.titleLbl)
        
        
        NSLayoutConstraint.activate([
  
            
        ])
    }
    
}

extension ApodViewController: ApodViewInput, ApodViewOutput, ApodRouterInput {
    
}
