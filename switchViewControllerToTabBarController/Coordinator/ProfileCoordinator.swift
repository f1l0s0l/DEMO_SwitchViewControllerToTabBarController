//
//  ProfileCoordinator.swift
//  switchViewControllerToTabBarController
//
//  Created by Илья Сидорик on 02.03.2023.
//

import Foundation
import UIKit

final class ProfileCoordinator: Coordinatble {
    
    // MARK: - Properties
    
    private(set) var childCoordinators: [Coordinatble] = []
    
    
    // MARK: - Methods
    
    func start() -> UIViewController {
        let profileViewController = ProfileViewController()
        
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        let tabBarItem = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person"),
            tag: 0
        )
        profileNavigationController.tabBarItem = tabBarItem
        
        return profileNavigationController
    }
    
    func addChildCoordinator(_ coordinator: Coordinatble) {
        guard !self.childCoordinators.contains(where: { $0 === coordinator }) else {
            return
        }
        self.childCoordinators.append(coordinator)
    }
    
    func removeChildCoordinator(_ coordinator: Coordinatble) {
        self.childCoordinators.removeAll(where: {$0 === coordinator})
    }
    
}

