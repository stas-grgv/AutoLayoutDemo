//
//  UIElements.swift
//  AutoLayoutDemo
//
//  Created by Stanislav Georgiev on 14.01.2021.
//

import Foundation
import UIKit

extension ViewController {
    
    func createButton() -> UIButton {
        
        let button = UIButton(frame: CGRect(x: 200, y: 400, width: 100, height: 50))
        button.backgroundColor = .darkGray
        button.setTitle("Button", for: .normal)
        button.layer.cornerRadius = 16
        
        let action2 = UIAction(title: "action") {
            (action) in
            print("button pushed")
        }
        button.addAction(action2, for: .touchUpInside)
        return button
    }
}
