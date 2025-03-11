//
//  NavigationController.swift
//  FoodDelivery
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import Foundation
import UIKit

class NavigationController: UINavigationController, UIGestureRecognizerDelegate, UINavigationControllerDelegate {
    
    /// View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        weak var weakSelf: NavigationController? = self
        self.hidesBarsOnTap = false
        self.hidesBarsOnSwipe = false
        self.hidesBarsWhenKeyboardAppears = false
        self.interactivePopGestureRecognizer?.delegate = weakSelf!
        self.delegate = weakSelf!
        self.isNavigationBarHidden = true
    }
}
