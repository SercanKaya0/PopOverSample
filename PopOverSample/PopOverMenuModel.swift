//
//  PopOverMenuModel.swift
//  PopOverSample
//
//  Created by Sercan KAYA on 10.04.2022.
//

import Foundation
import UIKit

public enum PopOverMenuType {
    case delete, share, edit
}

struct PopOverMenuModel {
    init(title: String, image: UIImage?, type: PopOverMenuType) {
        self.title = title
        self.image = image
        self.type = type
    }
    
    let title: String
    let image: UIImage?
    let type: PopOverMenuType
}
