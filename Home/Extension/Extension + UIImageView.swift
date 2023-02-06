//
//  Extension + UIImageView.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import Foundation
import UIKit

extension UIImageView {
    func createImage(image: String, value: CGFloat?, borderColor: CGColor?, width: CGFloat, contentMode: UIView.ContentMode) -> UIImageView {
        let img = UIImageView()
        img.clipsToBounds = true
        img.contentMode = contentMode
        img.layer.cornerRadius = value ?? 0
        img.image = UIImage(named: image)
        img.layer.borderColor = borderColor
        img.layer.borderWidth = width
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }
}
