//
//  ThirdViewController.swift
//  CoordinatorPatternStoryBoard
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 13/03/23.
//

import UIKit

class ThirdViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third View"
        view.backgroundColor = .white
    }
    
}
