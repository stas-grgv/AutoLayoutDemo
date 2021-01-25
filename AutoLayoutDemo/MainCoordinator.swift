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
    
    
    func start() {
        initViewController(vc: ViewController(), navTitle: "ViewController")
    }
    
    
    func initViewController(vc: UIViewController, navTitle: String) {
        vc.view = UIView(frame: UIScreen.main.bounds)
        vc.loadView()
        vc.navigationItem.title = navTitle
        vc.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Auto", image: nil, primaryAction: nil, menu: nil)
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Layout", image: nil, primaryAction: nil, menu: nil)
        navigationController.pushViewController(vc, animated: false)
    }
}
