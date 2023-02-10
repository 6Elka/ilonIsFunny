//
//  Extension + UIButton.swift
//  Home
//
//  Created by Artem on 10.02.2023.
//

import Foundation
import UIKit

extension UIButton {
    func createButton(text: String, color: UIColor, background: UIColor, width: CGFloat, borderColor: CGColor?) -> UIButton {
        let btn = UIButton()
        btn.setTitle(text, for: .normal)
        btn.setTitleColor(color, for: .normal)
        btn.layer.cornerRadius = 5
        btn.backgroundColor = background
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .semibold)
        btn.layer.borderWidth = width
        btn.layer.borderColor = borderColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    func createButtonOptions(text: String, background: UIColor, width: CGFloat, borderColor: CGColor?) -> UIButton {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: text)?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        btn.layer.cornerRadius = 5
        btn.backgroundColor = background
        btn.layer.borderWidth = width
        btn.layer.borderColor = borderColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    func buttonIcon(image: String) -> UIButton {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: image)?.withTintColor(.gray, renderingMode: .alwaysOriginal), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
}
