//
//  LoginViewModel.swift
//  CoordinatorPattern
//
//  Created by Feqan Aslanli on 14.04.24.
//

import Foundation
protocol LoginNavigation: AnyObject {
    func goToSignUp()
    func goToHome()
}

final class LoginViewModel {
    weak var navigation: LoginNavigation?
    init(nav: LoginNavigation) {
        self.navigation = nav
    }
    
    //MARK: Navigation
    
    func goToSignUp() {
        navigation?.goToSignUp()
    }
    func goToHome() {
        navigation?.goToHome()
    }
    deinit {
        print(#function, String(describing: Self.self))
    }
    
}
