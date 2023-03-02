//
//  LoginViewController.swift
//  switchViewControllerToTabBarController
//
//  Created by Илья Сидорик on 02.03.2023.
//

import Foundation
import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - Public properties

    weak var coordinator: CoordinatbleLogin?
    
    
    // MARK: - Properties

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        button.setTitle("goToTabBarController", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupConstraints()
    }
    
    deinit {
        print("loginViewController \(#function)")
    }
    
    
    // MARK: - Methods

    private func setupView() {
        self.view.backgroundColor = .white
        self.view.addSubview(self.loginButton)
    }
    
    
    // MARK: - Constraints
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            self.loginButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.loginButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20),
            self.loginButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            self.loginButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
}
