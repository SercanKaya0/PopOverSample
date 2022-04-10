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
                  sender: UIButton, arrowDirection: UIPopoverArrowDirection = .up) {
        
        // PopOver olarak göstereceğimiz ekranı belirliyoruz.
          let viewController = PopOverMenuViewController()
        // Bu ekranın nasıl açılacağını belirtiyoruz.
          viewController.modalPresentationStyle = .popover
        // Açılacak Ekran için bir size belirtmemiz gerekmektedir.
          viewController.preferredContentSize = .init(width: 240, height: 135)
          let presentationController = viewController.popoverPresentationController
        // presentationController bizden bir delegate beklemektedir.
          presentationController?.delegate = inViewController
        // Burada popOverın açılış yönünü belirtiyoruz. Hep aşağı doğru açılsın diyebiliriz.
          presentationController?.permittedArrowDirections = arrowDirection
        //  Bu PopOver açılacağı yeri anlaması işin bir kaynak vermemiz gerekmektedir.
        // Bunu da button target kısmında yakalıacağız
          presentationController?.sourceView = sender
          presentationController?.sourceRect = sender.bounds
          inViewController.present(viewController, animated: true, completion: nil)
    }
}
