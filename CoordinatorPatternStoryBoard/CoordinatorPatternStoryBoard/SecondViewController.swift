//
//  SecondViewController.swift
//  CoordinatorPatternStoryBoard
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 13/03/23.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Seconds"
        view.backgroundColor = .brown
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemRed
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(goesToThirdView), for: .touchUpInside)
    }
    
    @objc func goesToThirdView() {
        coordinator?.eventOcurred(with: .thirdViewController)
    }
}
