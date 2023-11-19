//
//  DailyForecastTableViewCell.swift
//  Wheather App
//
//  Created by Daniel Lameu de Souza on 07/11/23.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    static let identifier: String = "DailyForecast"
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [dailyLabel, iconImageView, minLabel, maxLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.alignment = .center
        
        return stackView
    } ()
    
    private lazy var dailyLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    } ()
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemYellow
        return imageView
    } ()
    
    private lazy var minLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.secundaryColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    } ()
    
    private lazy var maxLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.secundaryColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    } ()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadData(weekDay: String?, min: String?, max: String?, icon: UIImage?) {
        dailyLabel.text = weekDay
        minLabel.text = "min \(min ?? "")"
        maxLabel.text = "max \(max ?? "")"
        iconImageView.image = icon
    }
    
    private func setupView() {
        
        backgroundColor = .clear
        selectionStyle = .none
        
        setHierarchy()
        setConstraint()
        
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            dailyLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50),
            iconImageView.heightAnchor.constraint(equalToConstant: 30),
            iconImageView.widthAnchor.constraint(equalToConstant: 80)
        
        ])
    }
    
    private func setConstraint() {
        stackView.setConstraintsToParentent(contentView)
    }
    
}

