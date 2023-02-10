//
//  Extension + UILabe.swift
//  Home
//
//  Created by Artem on 10.02.2023.
//

import Foundation
import UIKit

extension UILabel {
    func createLabel(text: String, size: CGFloat, weight: UIFont.Weight, color: UIColor) -> UILabel {
        let lbl = UILabel()
        lbl.text = text
        lbl.textColor = color
        lbl.font = .systemFont(ofSize: size, weight: weight)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func createLabelStory(size: CGFloat, weight: UIFont.Weight, color: UIColor) -> UILabel {
        let lbl = UILabel()
        lbl.textColor = color
        lbl.font = .systemFont(ofSize: size, weight: weight)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
}

