//
//  ViewController.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

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
    }
    
    private func createItem(image: String, viewController: UIViewController) -> UIViewController {
        let item = UITabBarItem(title: "", image: UIImage(systemName: image)?.withTintColor(.white, renderingMode: .alwaysOriginal), tag: 0)
        viewController.tabBarItem = item
        return viewController
    }

}

