//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Stanislav Georgiev on 14.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    weak var redView: UIView!
    weak var blueView: UIView!
    weak var textView: UITextView!
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .white
        
        
        //MARK: --BLUEVIEW
        let blueView = UIView(frame: .zero)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(blueView)
        blueView.backgroundColor = .blue
        
        NSLayoutConstraint.activate([
            blueView.widthAnchor.constraint(equalToConstant: 60),
            blueView.heightAnchor.constraint(equalToConstant: 60),
            blueView.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            blueView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60)
        ])
        
        //MARK: --REDVIEW
        
        let redView = UIView(frame: .zero)
        redView.backgroundColor = .red
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.widthAnchor.constraint(equalToConstant: 120),
            redView.heightAnchor.constraint(equalToConstant: 60),
            redView.leftAnchor.constraint(equalTo: blueView.centerXAnchor, constant: 40),
            redView.centerYAnchor.constraint(equalTo: blueView.centerYAnchor)
        ])
        
        //MARK: -- Text View
        
        let textView = UITextView(frame: .zero)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "This is the text view. This is the text view. "
        self.view.addSubview(textView)
        
        NSLayoutConstraint.activate([
            textView.rightAnchor.constraint(equalTo: redView.rightAnchor),
            textView.heightAnchor.constraint(equalToConstant: 60),
            textView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 10),
            textView.leftAnchor.constraint(equalTo: blueView.leftAnchor)
        ])

    }
    
    
    //MARK: --VIEW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
