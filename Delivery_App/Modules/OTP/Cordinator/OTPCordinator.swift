//
//  OTPCordinator.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import Foundation

class OTPCordinator: BaseCoordinator {
    
    /// Variable
    private var viewModel: OTPVM?
    
    /// init methods
    override init() {
        self.viewModel = OTPVM()
    }
    
    override func start() {
        setupBinding()
        let vc = OTPVC()
        vc.viewModel = viewModel
        self.navigationController.setNavigationBarHidden(true, animated: false)
        self.navigationController.pushViewController(vc, animated: true)
    }
}

//// MARK: Method(s)
extension OTPCordinator {
    
    /// Setup coordinator bindings
    private func setupBinding() {
        viewModel?.navigateToNewPasswordPage.subscribe(to: self) {  _, _ in
            self.navigateToNewPasswordScreen()
        }
    }
    
    
    private func navigateToNewPasswordScreen() {
        let newPassVC = NewPasswordCordinator()
        newPassVC.navigationController = self.navigationController
        newPassVC.start()
    }
}


