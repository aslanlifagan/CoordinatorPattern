//
//  AppCoordinator.swift
//  CoordinatorPattern
//
//  Created by Feqan Aslanli on 14.04.24.
//

import UIKit

class AppCoordinator : Coordinator {
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("\(String(describing: Self.self)) Start")
        let isLogin = 0
        // The first time this coordinator started, is to launch login page.
        if isLogin == 1 {
            goToHome()
        } else {
            goToAuth()
        }
    }
    
    func goToAuth(){
        
        // For the first time, the app is going to go to Authentication module
        let authCoordinator = AuthCoordinator.init(navigationController: navigationController)
        // Remove all children, because this is a top level coordinator.
        children.removeAll()
        
        authCoordinator.parentCoordinator = self
        children.append(authCoordinator)
        
        authCoordinator.start()
    }
    
    func goToHome(){
        // Initiate HomeTabBar Coordinator
        let homeCoordinator = HomeCoordinator(navigationController: navigationController)
        children.removeAll()
        homeCoordinator.parentCoordinator = self
        children.append(homeCoordinator)
        homeCoordinator.start()
    }
    
    
    deinit {
        print(#function, String(describing: Self.self))
    }
}
