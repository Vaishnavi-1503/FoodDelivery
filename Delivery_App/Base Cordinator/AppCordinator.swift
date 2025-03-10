//
//  AppCordinator.swift
//  FoodDelivery
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {

    private var window: UIWindow

    init(_ window: UIWindow) {
        self.window = window
    }

    override func start() {
        let splashC = SplashCoordinator()
        self.start(coordinator: splashC)
        window.rootViewController = splashC.navigationController
        window.makeKeyAndVisible()
    }

}
