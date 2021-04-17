//
//  ViewController.swift
//  Stargazer
//
//  Created by Егор Горских on 11.04.2021.
//

import UIKit

class ApodViewController: UIViewController {
    
    // MARK: - Properties
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLbl,
                                                       copyrightLbl,
                                                       dataLbl,
                                                       apodImgVw,
                                                       descriptionTxtVw])
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        return stackView
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
        imageView.backgroundColor = .gray
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
        
        setupView()
        sutupAddSubview()
        setupScrollViewConstraint()
        setupStackViewConstraint()
        setupSizeUIConstraint()
        
        
    }
    
    // MARK: - Setup View
    func setupView() {
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Setup AddSub
    
    func sutupAddSubview() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
    }
    
    
    // MARK: - Setup Size Constraint
    
    func setupSizeUIConstraint() {
        NSLayoutConstraint.activate([
            ApodViewController.apodImgVw.heightAnchor.constraint(equalToConstant: 400),
            ApodViewController.apodImgVw.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            ApodViewController.descriptionTxtVw.heightAnchor.constraint(equalToConstant: 300),
            ApodViewController.descriptionTxtVw.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
    }
    
    // MARK: - Setup Constraint scrollView, stackView
    
    func setupStackViewConstraint() {
        let contentLayoutGuide = scrollView.contentLayoutGuide
        
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentLayoutGuide.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentLayoutGuide.bottomAnchor)
        ])
    }
    
    func setupScrollViewConstraint() {
        let frameLayoutGuide = scrollView.frameLayoutGuide
        
        NSLayoutConstraint.activate([
            frameLayoutGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            frameLayoutGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            frameLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            frameLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    
    
    
}


