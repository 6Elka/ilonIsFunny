//
//  Extension + UIProgressView.swift
//  Home
//
//  Created by Artem on 08.02.2023.
//

import Foundation
import UIKit

extension UIProgressView {
    func createProgress() -> UIProgressView {
        let progress = UIProgressView(progressViewStyle: .default)
        progress.trackTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        progress.progress = 0.0
        progress.observedProgress?.totalUnitCount = 10
        progress.progressTintColor = .white
        progress.translatesAutoresizingMaskIntoConstraints = false
        return progress
    }
}
