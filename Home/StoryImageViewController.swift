//
//  StoryImageViewController.swift
//  Home
//
//  Created by Artem on 08.02.2023.
//

import UIKit

final class StoryImageViewController: UIViewController {
    
    private let imageProfile = UIImageView().createImage(image: "mask1", value: nil, borderColor: nil, width: 0, contentMode: .scaleAspectFill)
    
    private let progressView = UIProgressView().createProgress()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    private func setup() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.progressView.setProgress(1, animated: true)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.navigationController?.popViewController(animated: true)
           
        }
        view.backgroundColor = .black
        view.addSubview(imageProfile)
        imageProfile.layer.cornerRadius = 10
        
        imageProfile.addSubview(progressView)
        
        NSLayoutConstraint.activate([
            imageProfile.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageProfile.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageProfile.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageProfile.heightAnchor.constraint(equalToConstant: 600),
            
            progressView.topAnchor.constraint(equalTo: imageProfile.topAnchor, constant: 10),
            progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            progressView.heightAnchor.constraint(equalToConstant: 2.4)
            ])
    }
}


