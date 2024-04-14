//
//  AuthCoordinator.swift
//  CoordinatorPattern
//
//  Created by Feqan Aslanli on 14.04.24.
//
import UIKit

class AuthCoordinator : Coordinator {
    
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("\(String(describing: Self.self)) Start")
        let viewModel = LoginViewModel(nav: self)
        let controller = LoginController.instantiate(for: "Auth")
        //        let controller = UIStoryboard.init(name: "Auth", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginController") as? LoginController ?? LoginController()
        controller.viewModel = viewModel
        navigationController.pushViewController(controller, animated: true)
    }
    deinit {
        print(#function, String(describing: Self.self))
    }
}

extension AuthCoordinator: LoginNavigation {
    func goToHome() {
        let appC = parentCoordinator as! AppCoordinator
        appC.goToHome()
        // Remember to clean up
        parentCoordinator?.childDidFinish(self)
        
    }
    
    func goToSignUp() {
        let viewModel = SignUpViewModel(nav: self)
        let controller = SignUpController.instantiate(for: "Auth")
        //        let controller = UIStoryboard.init(name: "Auth", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpController") as? SignUpController ?? SignUpController()
        controller.viewModel = viewModel
        navigationController.pushViewController(controller, animated: true)
    }
    
}
extension AuthCoordinator: SignUpNavigation {
    func goToBack() {
        navigationController.popViewController(animated: true)
    }
    
}
