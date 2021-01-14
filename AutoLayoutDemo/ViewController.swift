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
        self.view.backgroundColor = .white
        
        let button = createButton()
        
        let blueView = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 140))
        blueView.backgroundColor = .blue
        
        view.addSubview(blueView)
        view.addSubview(button)
        //
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
