//
//  SplashCoordinator.swift
//  FoodDelivery
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import Foundation
import UIKit

/// SplashCoordinator class
class SplashCoordinator: BaseCoordinator {
    
    /// Variable
    private var viewModel: SplashVM?
    
    /// init methods
    override init() {
        self.viewModel = SplashVM()
    }
    
    override func start() {
        setupBinding()
        let splashVC = UIStoryboard(.Main).instantiate(SplashVC.self)
        splashVC.viewModel = viewModel
        self.navigationController.viewControllers = [splashVC]
        self.navigationController.setNavigationBarHidden(true, animated: false)
    }
}

//// MARK: Method(s)
extension SplashCoordinator {
    
    /// Setup coordinator bindings
    private func setupBinding() {
        
        viewModel?.viewDidSelectLandingPage.subscribe(to: self) {  _, _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.navigateToLandingPage()
            }
        }
        
        viewModel?.viewDidDisappear.subscribe(to: self) { this, _ in
            this.parentCoordinator?.didFinish(coordinator: this)
        }
    }
    
    private func navigateToLandingPage() {
        let landingVC = LandingCordinatior()
        landingVC.navigationController = self.navigationController
        landingVC.start()
    }
}
