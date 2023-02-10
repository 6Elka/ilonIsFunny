//
//  SearchViewController.swift
//  Home
//
//  Created by Artem on 06.02.2023.
//

import UIKit

final class SearchViewController: UIViewController {

    //MARK: - Refresh Control
    private let refreshControl = UIRefreshControl().createRefresh()
    
    //MARK: - CollectionView
    private var collectionView: UICollectionView! = nil
 
    //MARK: - Data
    private let data = Data.shared.pageData

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: - Setup
    private func setup() {
        view.backgroundColor = .black
        self.navigationController?.navigationBar.prefersLargeTitles = false
        
        //MARK: - Collection View
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.showsVerticalScrollIndicator = false
        collectionView.frame = view.bounds
        view.addSubview(collectionView)
    
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ProfileInfo.self, forCellWithReuseIdentifier: ProfileInfo.reuseId)
        collectionView.register(StoryCell.self, forCellWithReuseIdentifier: StoryCell.reuseId)
        collectionView.register(IconCell.self, forCellWithReuseIdentifier: IconCell.reuseId)
        collectionView.register(PostCell.self, forCellWithReuseIdentifier: PostCell.reuseId)

        view.addSubview(collectionView)
        
        refreshControl.addTarget(self, action: #selector(activRefresh), for: .valueChanged)
        collectionView.alwaysBounceVertical = true
        collectionView.addSubview(refreshControl)
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { [weak self] index, environment in
            guard let self = self else {return nil}
            let section = self.data[index]
            switch section {
            case .first(_):
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(285)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                return section
            case .second(_):
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(0.2), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(100)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                return section
            case .third(_):
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .absolute(130), heightDimension: .absolute(50)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .paging
                return section
            case .fourth(_):
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1/3), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1/3)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                return section
              
        }
    }
}
    @objc func activRefresh(sender: UIRefreshControl) {
        sender.endRefreshing()
    }
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch data[indexPath.section] {
        case .first(let item):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileInfo.reuseId, for: indexPath) as! ProfileInfo
            cell.configure(info: item[indexPath.row])
            return cell
        case .second(let item):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCell.reuseId, for: indexPath) as! StoryCell
            cell.configure(info: item[indexPath.row])
            return cell
        case .third(let item):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IconCell.reuseId, for: indexPath) as! IconCell
            cell.configure(info: item[indexPath.row])
            return cell
        case .fourth(let item):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCell.reuseId, for: indexPath) as! PostCell
            cell.configure(info: item[indexPath.row])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch data[indexPath.section] {
        case .first(let item):
            switch item[indexPath.row] {
            case item[0]:
                let vc = StoryImageViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            default:
                break
            }
            
        case .fourth(let item):
            switch item[indexPath.row] {
            case item[0]:
                let vc = FirstPostViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            case item[1]:
                let vc = SecondPostViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            case item[2]:
                let vc = ThirdPostViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            case item[3]:
                let vc = FourthViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            case item[4]:
                let vc = FivePostViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            case item[5]:
                let vc = SixPostViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            default:
                break
            }
            
        default: break
        }
    }
}
