//
//  PopOverMenuModel.swift
//  PopOverSample
//
//  Created by Sercan KAYA on 10.04.2022.
//

import Foundation
import UIKit

enum PopOverMenuType {
    case delete, share, edit
}

struct PopOverMenuModel {
    init(title: String, image: UIImage?) {
        self.title = title
        self.image = image
    }
    
    let title: String
    let image: UIImage?
}
