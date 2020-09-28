//
//  UIViewController + Storyboard.swift
//  NewVkNews
//
//  Created by Emil Mubarakov on 27/07/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController { //его мы используем для предотвращения дублирования кода в AppDelegate (короче проще создавать контроллеры)
    
    class func loadFromStoryboard<T: UIViewController>() -> T {
        let name = String(describing: T.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? T {
            return viewController
        } else {
            fatalError("Error: No initial view controller in \(name) storyboard!")
        }
    }
    
}
