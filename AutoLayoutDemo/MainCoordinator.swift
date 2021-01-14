//
//  MainCoordinator.swift
//  AutoLayoutDemo
//
//  Created by Stanislav Georgiev on 14.01.2021.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(_ navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func initViewController(vc: UIViewController, navTitle: String) {
        vc.view = UIView(frame: UIScreen.main.bounds)
        vc.loadView()
        vc.navigationItem.title = navTitle
        navigationController.pushViewController(vc, animated: true)
    }
    
    func start() {
        initViewController(vc: ViewController(), navTitle: "ViewController")
    }
}