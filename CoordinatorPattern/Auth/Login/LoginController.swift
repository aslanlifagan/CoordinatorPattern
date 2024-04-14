//
//  LoginController.swift
//  CoordinatorPattern
//
//  Created by Feqan Aslanli on 14.04.24.
//

import UIKit

class LoginController: UIViewController, Storyboarded {
    @IBOutlet private weak var signUpButton: UIButton!
    @IBOutlet private weak var homeButton: UIButton!
    var viewModel: LoginViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTarget()
        // Do any additional setup after loading the view.
    }
    fileprivate func setupTarget() {
        signUpButton.addTarget(self, action: #selector(signUpClicked), for: .touchUpInside)
        homeButton.addTarget(self, action: #selector(homeClicked), for: .touchUpInside)
    }
    
    @objc func signUpClicked() {
        viewModel.goToSignUp()
    }
    @objc func homeClicked() {
        viewModel.goToHome()
    }
}

