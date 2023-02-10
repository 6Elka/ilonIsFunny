//
//  FivePostViewController.swift
//  Home
//
//  Created by Artem on 08.02.2023.
//

import UIKit

final class FivePostViewController: UIViewController {

    private let imageProfile = UIImageView().createImage(image: "mask5", value: nil, borderColor: nil, width: 0, contentMode: .scaleAspectFill)
    private let descriptionLabel = UILabel().createLabel(text: " Соображения высшего порядка, а также постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу специалистов участие в формировании форм воздействия!", size: 15, weight: .semibold, color: .white)
   
    override func viewDidLoad() {
        super.viewDidLoad()
            setup()
       
    }
    
    private func setup() {
        view.backgroundColor = .black
        title = "elonmuskrus"
        
        self.navigationItem.leftBarButtonItem = leftBarButton()
        
        view.addSubview(imageProfile)
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            imageProfile.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageProfile.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageProfile.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageProfile.heightAnchor.constraint(equalToConstant: 600),
            
            descriptionLabel.topAnchor.constraint(equalTo: imageProfile.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
            ])
    }
    
    private func leftBarButton() -> UIBarButtonItem {
        let left = UIBarButtonItem(image: UIImage(systemName: "chevron.left")?.withTintColor(.white ,renderingMode: .alwaysOriginal), style: .done, target: self, action: #selector(back))
        return left
    }
    
    private func leadingActivButtons() -> [UIBarButtonItem] {
        let heart = UIBarButtonItem(image: UIImage(systemName: "heart"), style: .done, target: nil, action: nil)
        let chat = UIBarButtonItem(image: UIImage(systemName: "message"), style: .done, target: nil, action: nil)
        let send = UIBarButtonItem(image: UIImage(systemName: "paperplane"), style: .done, target: nil, action: nil)
        return [send, chat, heart]
    }
    
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }

   
}
