//
//  Extension + UIStackView.swift
//  Home
//
//  Created by Artem on 10.02.2023.
//

import Foundation
import UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat, disctribution: UIStackView.Distribution) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.distribution = disctribution
        self.spacing = spacing
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
