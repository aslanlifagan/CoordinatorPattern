//
//  SignUpController.swift
//  CoordinatorPattern
//
//  Created by Feqan Aslanli on 14.04.24.
//

import UIKit

class SignUpController: UIViewController, Storyboarded {
    @IBOutlet private weak var loginButton: UIButton!
    
    var viewModel: SignUpViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTarget()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func setupTarget() {
        loginButton.addTarget(self, action: #selector(loginClicked), for: .touchUpInside)
    }
    
    @objc func loginClicked() {
        viewModel.goToBack()
    }
}

