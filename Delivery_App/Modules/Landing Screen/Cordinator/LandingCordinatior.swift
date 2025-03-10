//
//  LandingCordinatior.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import Foundation
import UIKit

class LandingCordinatior: BaseCoordinator {
    
    /// Variable
    private var viewModel: LandingVM?
    
    /// init methods
    override init() {
        self.viewModel = LandingVM()
    }
    
    override func start() {
        setupBinding()
        let vc = LandingVC()
        vc.viewModel = viewModel
        self.navigationController.setNavigationBarHidden(true, animated: false)
        self.navigationController.pushViewController(vc, animated: true)
    }
}

//// MARK: Method(s)
extension LandingCordinatior {
    
    /// Setup coordinator bindings
    private func setupBinding() {
        
        viewModel?.navigateToLoginPage.subscribe(to: self) {  _, _ in
            self.navigateToLogin()
        }
        
        viewModel?.navigateToCreateAccountPage.subscribe(to: self) {  _, _ in
            self.navigateToCreateAccount()
        }
    }
    
    private func navigateToLogin() {
        debugPrint("navigateToLogin")
//        let loginVC = LoginCordinator()
//        loginVC.navigationController = self.navigationController
//        loginVC.start()
        let onBoardingVC = OnBoardingCordinator()
        onBoardingVC.navigationController = self.navigationController
        onBoardingVC.start()
    }
    
    private func navigateToCreateAccount() {
        
    }
}


        
