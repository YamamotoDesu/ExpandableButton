//
//  ViewController.swift
//  ExpandableButton
//
//  Created by 山本響 on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let buttonPanelView = ButtonPanelView()
    private let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Tap!"
        label.sizeToFit()
        view.addSubview(label)
        buttonPanelView.delegate = self
        view.addSubview(buttonPanelView)
        addConstraints()
    }
    
    private func addConstraints() {
       
        buttonPanelView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30.0).isActive = true
        buttonPanelView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50.0).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

// MARK: - ButtonPanelDelegate

extension ViewController: ButtonPanelDelegate {
    func didTapButtonWithText(_ text: String) {
        guard text != label.text else { return }
        label.text = text
    }
}

