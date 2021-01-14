//
//  CoordinatorProtocol.swift
//  AutoLayoutDemo
//
//  Created by Stanislav Georgiev on 14.01.2021.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    
    func start()
}
