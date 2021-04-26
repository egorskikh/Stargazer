//
//  ApodPromoCell.swift
//  Stargazer
//
//  Created by Егор Горских on 26.04.2021.
//

import UIKit

class ApodPromoCell: UICollectionViewCell {
    
    var data: PromoData? {
        didSet {
            guard  let data = data else { return }
            backgroundImage.image = data.backroundImage
        }
    }
    
    fileprivate let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupAddSubview()
        setupCellConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupAddSubview() {
        contentView.addSubview(backgroundImage)
    }
    
    private func setupCellConstraint() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
}
