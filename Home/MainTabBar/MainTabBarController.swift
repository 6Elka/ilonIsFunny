//
//  ViewController.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        title = "elonmuskrus"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let house = createItem(image: "house", viewController: HouseViewController())
        let search = createItem(image: "magnifyingglass", viewController: SearchViewController())
        let story = createItem(image: "plus.square", viewController: StoryViewController())
        let followers = createItem(image: "heart", viewController: FollowersViewController())
        let profile = createItem(image: "person.circle", viewController: ProfileViewController())
        
        viewControllers = [house, search, story, followers, profile]
        
        self.navigationItem.rightBarButtonItem = rightBarButton()
        self.navigationItem.leftBarButtonItem = leftBarButton()
    }
    
    private func createItem(image: String, viewController: UIViewController) -> UIViewController {
        let item = UITabBarItem(title: "", image: UIImage(systemName: image)?.withTintColor(.white, renderingMode: .alwaysOriginal), tag: 0)
        viewController.tabBarItem = item
        return viewController
    }
    
    private func leftBarButton() -> UIBarButtonItem {
        let left = UIBarButtonItem(image: UIImage(systemName: "chevron.left")?.withTintColor(.white ,renderingMode: .alwaysOriginal), style: .done, target: self, action: nil)
        return left
    }
    private func rightBarButton() -> UIBarButtonItem {
        let right = UIBarButtonItem(image: UIImage(systemName: "ellipsis")?.withTintColor(.white, renderingMode: .alwaysOriginal), style: .done, target: self, action: nil)
        return right
    }

}

