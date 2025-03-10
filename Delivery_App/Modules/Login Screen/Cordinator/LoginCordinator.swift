//
//  LoginCordinator.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import Foundation

class LoginCordinator: BaseCoordinator {
    
    /// Variable
    private var viewModel: LoginVM?
    
    /// init methods
    override init() {
        self.viewModel = LoginVM()
    }
    
    override func start() {
        setupBinding()
        let vc = LoginVC()
        vc.viewModel = viewModel
        self.navigationController.setNavigationBarHidden(true, animated: false)
        self.navigationController.pushViewController(vc, animated: true)
    }
}


//// MARK: Method(s)
extension LoginCordinator {
    
    /// Setup coordinator bindings
    private func setupBinding() {
        
        viewModel?.navigateToLoginPage.subscribe(to: self) {  _, _ in
            self.actionLogin()
        }
        
        viewModel?.navigateToSignPage.subscribe(to: self) {  _, _ in
            self.actionSignUp()
        }
        
        viewModel?.navigateToResetPasswordPage.subscribe(to: self) {  _, _ in
            self.navigateToResetPassword()
        }
    }
    
    private func actionLogin() {
        debugPrint("actionLogin")
    }
    
    private func navigateToResetPassword() {
        let resetPassVC = ResetPasswordCordinator()
        resetPassVC.navigationController = self.navigationController
        resetPassVC.start()
    }
    
    private func actionSignUp() {
        let signUpVC = SignUpCordinator()
        signUpVC.navigationController = self.navigationController
        signUpVC.start()
    }
}



