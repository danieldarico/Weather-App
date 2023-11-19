//
//  HourlyForecastCollectionViewCell.swift
//  Wheather App
//
//  Created by Daniel Lameu de Souza on 06/11/23.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "HourlyForecast"
    
    private lazy var stackView: UIStackView = {
        
       let stackView = UIStackView(arrangedSubviews: [hourLabel, iconImageView, temperatureLabel])
        
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 4
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.statsColor?.cgColor
        stackView.alignment = .center
        stackView.layer.cornerRadius = 20
        return stackView
        
    }()
    
    private lazy var hourLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.secundaryColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    } ()
    
    private lazy var temperatureLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.secundaryColor
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    } ()
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    } ()
    

    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            setupView()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadData(time: String?, icon: UIImage?, temp: String?) {
        hourLabel.text = time
        iconImageView.image = icon
        temperatureLabel.text = temp
        
    }
    
    private func setupView() {
        
        setHierarchy()
        setConstraint()
        
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
    }
    
    private func setConstraint() {
        stackView.setConstraintsToParentent(contentView)
        NSLayoutConstraint.activate([
            iconImageView.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
}
