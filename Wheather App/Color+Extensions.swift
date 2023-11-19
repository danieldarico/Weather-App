//
//  Color+Extensions.swift
//  Wheather App
//
//  Created by Daniel Lameu de Souza on 06/11/23.
//

import Foundation
import UIKit

extension UIColor {
    static let customColor = UIColor(named: "customColor")
    static let secundaryColor = UIColor(named: "secundaryColor")
    static let statsColor = UIColor(named: "softGray")
}

extension UIView {
    func setConstraintsToParentent(_ parent: UIView) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor)
        ])
    }
}
