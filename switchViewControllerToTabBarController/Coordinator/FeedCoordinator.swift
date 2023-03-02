//
//  FeedCoordinator.swift
//  switchViewControllerToTabBarController
//
//  Created by Илья Сидорик on 02.03.2023.
//

import Foundation
import UIKit

final class FeedCoordinator: Coordinatble {
    
    // MARK: - Properties
        
    private(set) var childCoordinators: [Coordinatble] = []
    
    
    // MARK: - Methods

    func start() -> UIViewController {
        let feedViewController = FeedViewController()
        
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        let tabBarItem = UITabBarItem(
            title: "Feed",
            image: UIImage(systemName: "square.stack"),
            tag: 0
        )
        feedNavigationController.tabBarItem = tabBarItem
        
        return feedNavigationController
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
