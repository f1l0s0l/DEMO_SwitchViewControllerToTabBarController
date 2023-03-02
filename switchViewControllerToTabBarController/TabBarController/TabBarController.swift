//
//  TabBarController.swift
//  switchViewControllerToTabBarController
//
//  Created by Илья Сидорик on 03.03.2023.
//

import Foundation
import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: - Life cycle

    init(navControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = navControllers
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Methods

    private func setupView() {
        UITabBar.appearance().tintColor = .systemBlue
        UITabBar.appearance().backgroundColor = .white

        UINavigationBar.appearance().tintColor = .systemBlue
        UINavigationBar.appearance().backgroundColor = .white
    }
    
}
