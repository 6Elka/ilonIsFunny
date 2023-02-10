//
//  ProfileInfo.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import Foundation
import UIKit

final class ProfileInfo: UICollectionViewCell {
    
    func configure(info: Item) {
        profileImage.image = UIImage(named: info.image)
        nameUser.text = info.title
        
    }
    
    static let reuseId = "Profile"
    
    //MARK: - Image User
    let profileImage = UIImageView().createImage(image: "mask", value: 50, borderColor: nil, width: 0, contentMode: .scaleAspectFill)
    var ringInsta = UIImageView().createImage(image: "ring", value: 0, borderColor: nil, width: 0, contentMode: .scaleAspectFit)
    
    
    private let posts = UILabel().createLabel(text: "Публикации", size: 12, weight: .medium, color: .white)
    private let followers = UILabel().createLabel(text: "Подписчики", size: 12, weight: .medium, color: .white)
    private let subscribes = UILabel().createLabel(text: "Подписки", size: 12, weight: .medium, color: .white)
    
    private let countPost = UILabel().createLabel(text: "152", size: 15, weight: .semibold, color: .white)
    private let countFollow = UILabel().createLabel(text: "18,6 тыс.", size: 15, weight: .medium, color: .white)
    private let countSub = UILabel().createLabel(text: "0", size: 15, weight: .medium, color: .white)
    
    
    
    private var descriptionCeo: UIStackView! = nil
    
    private let nameUser = UILabel().createLabel(text: "Илон Маск в России", size: 14, weight: .semibold, color: .white)
    private let skillName = UILabel().createLabel(text: "Предприниматель", size: 14, weight: .medium, color: .gray)
    private let positionName = UILabel().createLabel(text: "CEO", size: 15, weight: .light, color: .white)
    private let companyName = UILabel().createLabel(text: "@spacex / @teslamotors / сооснователь @paypal", size: 14, weight: .medium, color: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
    private let linkCompany = UILabel().createLabel(text: "www.spacex.com", size: 15, weight: .medium, color: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
    private let subscribeFriend = UILabel().createLabel(text: "Подписаны: ", size: 15, weight: .light, color: .white)
    private let friend = UILabel().createLabel(text: "dima_baranovskiy_", size: 15, weight: .semibold, color: .white)
    
    //MARK: - Buttons
    private let subscribeButton = UIButton().createButton(text: "Подписаться", color: .white, background: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), width: 0, borderColor: nil)
    private let writeButton = UIButton().createButton(text: "Написать", color: .white, background: .black, width: 1, borderColor: UIColor.gray.cgColor)
    private let optionButton = UIButton().createButtonOptions(text: "chevron.down", background: .black, width: 1, borderColor: UIColor.gray.cgColor)
    
    private var horizontalButtons: UIStackView! = nil
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup() {
        //MARK: - Image
        addSubview(profileImage)
        addSubview(ringInsta)
        
        addSubview(posts)
        addSubview(followers)
        addSubview(subscribes)
        
        addSubview(countPost)
        addSubview(countFollow)
        addSubview(countSub)
        
        //MARK: - StackView Vertical
        descriptionCeo = UIStackView(arrangedSubviews: [nameUser, skillName, positionName, companyName, linkCompany, subscribeFriend, friend], axis: .vertical, spacing: 3, disctribution: .fillEqually)
        
        addSubview(descriptionCeo)
        
        //MARK: - StackView Horizontal
        horizontalButtons = UIStackView(arrangedSubviews: [subscribeButton, writeButton], axis: .horizontal, spacing: 5, disctribution: .fillEqually)
        addSubview(horizontalButtons)
        

        addSubview(optionButton)
        
        
        NSLayoutConstraint.activate([
            //MARK: - Image
            profileImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileImage.topAnchor.constraint(equalTo: topAnchor),
            profileImage.widthAnchor.constraint(equalToConstant: 100),
            profileImage.heightAnchor.constraint(equalToConstant: 100),
            
            ringInsta.leadingAnchor.constraint(equalTo: leadingAnchor),
            ringInsta.topAnchor.constraint(equalTo: topAnchor),
            ringInsta.widthAnchor.constraint(equalToConstant: 102),
            ringInsta.heightAnchor.constraint(equalToConstant: 102),
            
            //MARK: - Posts / Followers / Subscribes
            countPost.leadingAnchor.constraint(equalTo: ringInsta.trailingAnchor, constant: 50),
            countPost.centerYAnchor.constraint(equalTo: ringInsta.centerYAnchor, constant: -10),

            posts.centerYAnchor.constraint(equalTo: ringInsta.centerYAnchor, constant: 10),
            posts.centerXAnchor.constraint(equalTo: countPost.centerXAnchor),

            countFollow.leadingAnchor.constraint(equalTo: countPost.trailingAnchor, constant: 50),
            countFollow.centerYAnchor.constraint(equalTo: countPost.centerYAnchor),

            followers.centerYAnchor.constraint(equalTo: posts.centerYAnchor),
            followers.centerXAnchor.constraint(equalTo: countFollow.centerXAnchor),

            countSub.leadingAnchor.constraint(equalTo: countFollow.trailingAnchor, constant: 50),
            countSub.centerYAnchor.constraint(equalTo: countFollow.centerYAnchor),

            subscribes.centerYAnchor.constraint(equalTo: followers.centerYAnchor),
            subscribes.centerXAnchor.constraint(equalTo: countSub.centerXAnchor),
            
            //MARK: - Description
            descriptionCeo.topAnchor.constraint(equalTo: ringInsta.bottomAnchor, constant: 10),
            descriptionCeo.leadingAnchor.constraint(equalTo: leadingAnchor),
            descriptionCeo.widthAnchor.constraint(equalToConstant: 350),
            descriptionCeo.heightAnchor.constraint(equalToConstant: 120),
            
            horizontalButtons.topAnchor.constraint(equalTo: descriptionCeo.bottomAnchor, constant: 10),
            horizontalButtons.leadingAnchor.constraint(equalTo: leadingAnchor),
            horizontalButtons.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            horizontalButtons.heightAnchor.constraint(equalToConstant: 35),
            
            optionButton.leadingAnchor.constraint(equalTo: horizontalButtons.trailingAnchor, constant: 5),
            optionButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            optionButton.topAnchor.constraint(equalTo: descriptionCeo.bottomAnchor, constant: 10),
            optionButton.centerYAnchor.constraint(equalTo: horizontalButtons.centerYAnchor)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
