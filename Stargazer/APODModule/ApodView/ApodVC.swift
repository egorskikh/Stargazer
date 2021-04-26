//
//  ApodVC.swift
//  Stargazer
//
//  Created by Егор Горских on 11.04.2021.
//

import UIKit

class ApodVC: UIViewController {
    
    // MARK: - TODO! Move from here later
    let promoImageData = [ PromoData(backroundImage: #imageLiteral(resourceName: "nasa1")),
                           PromoData(backroundImage: #imageLiteral(resourceName: "nasa4")),
                           PromoData(backroundImage: #imageLiteral(resourceName: "nasa3")),
                           PromoData(backroundImage: #imageLiteral(resourceName: "nasa6")),
                           PromoData(backroundImage: #imageLiteral(resourceName: "nasa5")),
                           PromoData(backroundImage: #imageLiteral(resourceName: "nasa2")),
                           PromoData(backroundImage: #imageLiteral(resourceName: "nasa7")),
                           PromoData(backroundImage: #imageLiteral(resourceName: "nasa8"))]
    
    
    // MARK: - Properties
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [promoCollectionView,
                                                       titleTabLbl,
                                                       titleLbl,
                                                       dataLbl,
                                                       copyrightLbl,
                                                       apodImgVw,
                                                       descriptionTxtVw])
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        return stackView
    }()
    
    lazy var promoCollectionView: UICollectionView = {
        let layot = UICollectionViewFlowLayout()
        layot.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layot)
        collectionView.register(ApodPromoCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = #colorLiteral(red: 0.09019607843, green: 0.05098039216, blue: 0.1490196078, alpha: 1)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    lazy var titleTabLbl: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.attributedText =
            NSMutableAttributedString()
            .orangeHighlight("Astronomy Picture of the Day")
        return label
    }()
    
    lazy var titleLbl: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.attributedText =
            NSMutableAttributedString()
            .bold("Hello, an ordinary guy from the outskirts of Moscow.")
        return label
    }()
    
    lazy var dataLbl: UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.attributedText =
            NSMutableAttributedString()
            .bold("dd.mm.21")
        return label
    }()
    
    lazy var copyrightLbl: UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText =
            NSMutableAttributedString()
            .underlined("Copyright: Egor Gorskikh")
        label.textColor = .white
        return label
    }()
    
    lazy var apodImgVw: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.3568627451, green: 0.1921568627, blue: 0.6078431373, alpha: 1)
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var descriptionTxtVw: UITextView = {
        var textView = UITextView()
        textView.isEditable = false
        textView.textAlignment = .center
        textView.font = UIFont.systemFont(ofSize: 17.0)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = #colorLiteral(red: 0.09019607843, green: 0.05098039216, blue: 0.1490196078, alpha: 1)
        textView.isScrollEnabled = false
        textView.textColor = .white
        textView.text = "Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow.Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow. Hello, an ordinary guy from the outskirts of Moscow."
        
        return textView
    }()
    
    lazy var urlVideoLbl: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        configureNavigatorController()
        sutupAddSubview()
        setupScrollViewConstraint()
        setupStackViewConstraint()
        setupSizeUIConstraint()
        setupHeightСollectionViews()
        configureDataSoureceAndDelegateProtocols()
    }
    
    // MARK: - Conform to The CollectionView Data Source and Delegate Protocols
    
    private func configureDataSoureceAndDelegateProtocols() {
        promoCollectionView.delegate = self
        promoCollectionView.dataSource = self
        
    }
    
    // MARK: - Setup View
    
    private func setupView() {
        self.view.backgroundColor = #colorLiteral(red: 0.09019607843, green: 0.05098039216, blue: 0.1490196078, alpha: 1)
    }
    
    private func configureNavigatorController() {
        self.navigationItem.title = "apod"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.09019607843, green: 0.05098039216, blue: 0.1490196078, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
    }
    
    // MARK: - Setup AddSub
    
    private func sutupAddSubview() {
        scrollView.addSubview(stackView)
        view.addSubview(scrollView)
    }
    
    
    // MARK: - Setup Size Constraint
    
    private func setupSizeUIConstraint() {
        NSLayoutConstraint.activate([
            apodImgVw.heightAnchor.constraint(equalToConstant: 400),
            apodImgVw.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            descriptionTxtVw.widthAnchor.constraint(equalTo: stackView.widthAnchor)
        ])
    }
    
    // MARK: - Setup Constraint scrollView, stackView, promoCollectionView
    
    private func setupHeightСollectionViews() {
        NSLayoutConstraint.activate([
                promoCollectionView.heightAnchor.constraint(equalToConstant: view.frame.width / 2)])
        }
    
        private func setupStackViewConstraint() {
            let contentLayoutGuide = scrollView.contentLayoutGuide
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: contentLayoutGuide.leadingAnchor, constant: 5),
                stackView.trailingAnchor.constraint(equalTo: contentLayoutGuide.trailingAnchor, constant: -5),
                stackView.topAnchor.constraint(equalTo: contentLayoutGuide.topAnchor, constant: 5),
                stackView.bottomAnchor.constraint(equalTo: contentLayoutGuide.bottomAnchor, constant: -5),
                stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        }
        
        private func setupScrollViewConstraint() {
            let frameLayoutGuide = scrollView.frameLayoutGuide
            NSLayoutConstraint.activate([
                frameLayoutGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                frameLayoutGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                frameLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                frameLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
        }
        
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout, UICollectionViewDataSource
    
    extension ApodVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: (collectionView.frame.width / 2.5),
                          height: (collectionView.frame.width / 2))
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return promoImageData.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ApodPromoCell
            else {
                return UICollectionViewCell()
            }
            cell.data = self.promoImageData[indexPath.item]
            return cell
        }
        
    }
