//
//  ResetPasswordCordinator.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import Foundation

class ResetPasswordCordinator: BaseCoordinator {
    
    /// Variable
    private var viewModel: ResetPasswordVM?
    
    /// init methods
    override init() {
        self.viewModel = ResetPasswordVM()
    }
    
    override func start() {
        setupBinding()
        let vc = ResetPasswordVC()
        vc.viewModel = viewModel
        self.navigationController.setNavigationBarHidden(true, animated: false)
        self.navigationController.pushViewController(vc, animated: true)
    }
}

//// MARK: Method(s)
extension ResetPasswordCordinator {
    
    /// Setup coordinator bindings
    private func setupBinding() {
        
        viewModel?.actionSend.subscribe(to: self) {  _, _ in
            self.actionSendEmail()
        }
    }
    
    
    private func actionSendEmail() {
        let newPassVC = OTPCordinator()
        newPassVC.navigationController = self.navigationController
        newPassVC.start()
    }
}


        

