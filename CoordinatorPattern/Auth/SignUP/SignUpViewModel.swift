//
//  SignUpViewModel.swift
//  CoordinatorPattern
//
//  Created by Feqan Aslanli on 14.04.24.
//

import Foundation
protocol SignUpNavigation: AnyObject {
    func goToBack()
}

final class SignUpViewModel {
    weak var navigation: SignUpNavigation?
    
    init(nav: SignUpNavigation) {
        self.navigation = nav
    }
    
    //MARK: Navigation
    
    func goToBack() {
        navigation?.goToBack()
    }
    deinit {
        print(#function, String(describing: Self.self))
    }
}
