//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Stanislav Georgiev on 14.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var redView: UIView!
    weak var blueView: UIView!
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .white
        
//        let button = createButton()
        
//        redView = UIView(frame: .zero)
        let blueView = UIView(frame: .zero)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(blueView)
        blueView.backgroundColor = .blue
        
        NSLayoutConstraint.activate([
            blueView.widthAnchor.constraint(equalToConstant: 300),
            blueView.heightAnchor.constraint(equalToConstant: 60),
            blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        self.blueView = blueView
//        view.addSubview(button)
        //
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
    }


}
