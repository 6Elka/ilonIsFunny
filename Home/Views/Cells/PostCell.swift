//
//  PostCell.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import Foundation
import UIKit

final class PostCell: UICollectionViewCell {
    
    func configure(info: Item) {
        postImage.image = UIImage(named: info.image)
    }
    
    static let reuseId = "Post"
    
    private let postImage = UIImageView().createImage(image: "mask1", value: 0, borderColor: nil, width: 0, contentMode: .scaleAspectFill)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup() {
        backgroundColor = .clear
        addSubview(postImage)
        
        NSLayoutConstraint.activate([
            postImage.topAnchor.constraint(equalTo: topAnchor),
            postImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            postImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            postImage.bottomAnchor.constraint(equalTo: bottomAnchor)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

