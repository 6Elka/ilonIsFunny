//
//  StoryCell.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import Foundation
import UIKit

final class StoryCell: UICollectionViewCell {
    
    func configure(info: Item) {
        imageStory.image = UIImage(named: info.image)
        labelStory.text = info.title
    }
    
    static let reuseId = "Story"
    
    let imageStory = UIImageView().createImage(image: "star", value: 30, borderColor: UIColor.gray.cgColor, width: 1, contentMode: .scaleAspectFit)
    private let labelStory = UILabel().createLabelStory(size: 15, weight: .medium, color: .white)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = .clear
        
        addSubview(imageStory)
        addSubview(labelStory)
        
        NSLayoutConstraint.activate([
            imageStory.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            imageStory.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageStory.heightAnchor.constraint(equalToConstant: 60),
            imageStory.widthAnchor.constraint(equalToConstant: 60),
            
            labelStory.topAnchor.constraint(equalTo: imageStory.bottomAnchor, constant: 10),
            labelStory.centerXAnchor.constraint(equalTo: centerXAnchor)
        
        ])
        
    }
}
