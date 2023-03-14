//
//  Coordinator.swift
//  CoordinatorPatternStoryBoard
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 13/03/23.
//

import Foundation
import UIKit

// Creating a enum to call to the next View
enum Event {
    case secondViewControler
    case thirdViewController
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    func eventOcurred(with type: Event)
    func start ()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
