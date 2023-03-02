//
//  ProtocolCoordinator.swift
//  switchViewControllerToTabBarController
//
//  Created by Илья Сидорик on 02.03.2023.
//

import Foundation
import UIKit

protocol Coordinatble: AnyObject {
    var childCoordinators: [Coordinatble] { get }
    func start() -> UIViewController
    func addChildCoordinator(_ coordinator: Coordinatble)
    func removeChildCoordinator(_ coordinator: Coordinatble)
}
