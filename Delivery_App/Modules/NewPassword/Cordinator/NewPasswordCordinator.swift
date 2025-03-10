//
//  ResetPasswordCordinator.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import Foundation

class NewPasswordCordinator: BaseCoordinator {
    
    /// Variable
    private var viewModel: NewPasswordVM?
    
    /// init methods
    override init() {
        self.viewModel = NewPasswordVM()
    }
    
    override func start() {
        //setupBinding()
        let vc = NewPasswordVC()
        vc.viewModel = viewModel
        self.navigationController.setNavigationBarHidden(true, animated: false)
        self.navigationController.pushViewController(vc, animated: true)
    }
}


