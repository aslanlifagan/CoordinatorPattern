//
//  HomeCoordinator.swift
//  CoordinatorPattern
//
//  Created by Feqan Aslanli on 14.04.24.
//

import UIKit

class HomeCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("\(String(describing: Self.self)) Start")
        navigationController.setNavigationBarHidden(true, animated: false)
        let controller = HomeController.instantiate(for: "Main")
        //        let controller = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HomeTabbarController") as? HomeTabbarController ?? HomeTabbarController()
        navigationController.pushViewController(controller, animated: true)
    }
}
