//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Stanislav Georgiev on 14.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .red
        let button1 = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 140))
        button1.backgroundColor = .blue
        view.addSubview(button1)
        //
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

