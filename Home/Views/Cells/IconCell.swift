//
//  IconCell.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import Foundation
import UIKit

final class IconCell: UICollectionViewCell {
    
    func configure(info: Item) {
        iconButton.setImage(UIImage(named: info.image), for: .normal)
    }
    
    static let reuseId = "Icon"
    
    private let iconButton = UIButton().buttonIcon(image: "icon")
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup() {
        backgroundColor = .clear
        addSubview(iconButton)
        iconButton.addTarget(self, action: #selector(isActiv), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            iconButton.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            iconButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            iconButton.heightAnchor.constraint(equalToConstant: 30),
            iconButton.widthAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    @objc func isActiv(sender: UIButton) {
        if sender.isSelected {
            iconButton.setImage(UIImage(named: "icon")?.withTintColor(.gray, renderingMode: .alwaysOriginal), for: .highlighted)
        } else {
            iconButton.setImage(UIImage(named: "icon")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .highlighted)
        }
        
        print("AAAAA")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
