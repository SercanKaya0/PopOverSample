//
//  PopOverHelper.swift
//  PopOverSample
//
//  Created by Sercan KAYA on 10.04.2022.
//

import Foundation
import UIKit

typealias PresentedPopOverViewController = UIViewController & UIPopoverPresentationControllerDelegate


final class PopOverHelper {
    static var shared = PopOverHelper()

    func showMenu(inViewController: PresentedPopOverViewController,
                  sender: UIButton, arrowDirection: UIPopoverArrowDirection = .up, delegate: PopOverMenuViewControllerDelegate) {
        
          let viewController = PopOverMenuViewController()
        viewController.delegate = delegate
          viewController.modalPresentationStyle = .popover
          viewController.preferredContentSize = .init(width: 240, height: 135)
          let presentationController = viewController.popoverPresentationController
          presentationController?.delegate = inViewController
        presentationController?.permittedArrowDirections = .up
          presentationController?.sourceView = sender
          presentationController?.sourceRect = sender.bounds
          inViewController.present(viewController, animated: true, completion: nil)
    }
}
