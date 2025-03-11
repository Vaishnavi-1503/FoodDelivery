//
//  AppImages.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import Foundation
import UIKit

// AppImages decalre enum for common use in app
enum AppImages: String {
    case selected_PageControl = "ic_selected_PageControl"
    case unSelected_PageControl = "ic_unSelected_PageControl"
    static let onboardingSlide3Image = "ic_OnBoardImgae3"
    static let onboardingSlide2Image = "ic_OnBoardImgae2"
    static let onboardingSlide1Image = "ic_OnBoardImgae1"
}

extension UIImage {
    convenience init?(appImage: AppImages) {
        self.init(named: appImage.rawValue)
    }
}
