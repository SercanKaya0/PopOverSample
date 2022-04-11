//
//  ViewController.swift
//  PopOverSample
//
//  Created by Sercan KAYA on 10.04.2022.
//

import UIKit

class ViewController: UIViewController {

    private let popOverbutton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.setTitle("PopOverButton", for: .normal)
        button.addTarget(self, action: #selector(popOverButtonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubViews()
        // Do any additional setup after loading the view.
    }
}

// MARK: - UI Layout
extension ViewController {
    
    private func addSubViews() {
        addButton()
    }
    
    private func addButton() {
        view.addSubview(popOverbutton)
        NSLayoutConstraint.activate([
            popOverbutton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            popOverbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            popOverbutton.widthAnchor.constraint(equalToConstant: 200),
            popOverbutton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

// MARK: - Actions
extension ViewController {
    
    @objc
    func popOverButtonTapped(_ sender: UIButton) {
        PopOverHelper.shared.showMenu(inViewController: self, sender: sender, arrowDirection: .any, delegate: self)
    }
}

// MARK: - Delegates
extension ViewController: UIPopoverPresentationControllerDelegate, PopOverMenuViewControllerDelegate {
    
    func didSelectDelegate(type: PopOverMenuType) {
        switch type {
        case .delete:
            print("delete")
        case .share:
            print("share")
        case .edit:
            print("edit")
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController,
                                    traitCollection: UITraitCollection) -> UIModalPresentationStyle {
         return .none
     }
}
