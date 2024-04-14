//
//  Storyboarded.swift
//  CoordinatorPattern
//
//  Created by Feqan Aslanli on 14.04.24.
//

import UIKit

public protocol Storyboarded {
    static func instantiate(for name: String) -> Self
}

public extension Storyboarded where Self: UIViewController {
    
    static func instantiate(for name: String) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
