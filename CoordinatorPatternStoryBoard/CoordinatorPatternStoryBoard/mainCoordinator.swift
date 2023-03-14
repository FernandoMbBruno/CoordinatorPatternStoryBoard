//
//  mainCoordinator.swift
//  CoordinatorPatternStoryBoard
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 13/03/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    // Changing the View
    func eventOcurred(with type: Event) {
        switch type {
        case .secondViewControler:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
            
        case .thirdViewController:
            var vc: UIViewController & Coordinating = ThirdViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    // Start the view is like Main.StoryBoard
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
