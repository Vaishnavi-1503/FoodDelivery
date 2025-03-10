//
//  SignUpCordinator.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import Foundation

class SignUpCordinator: BaseCoordinator {
    
    /// Variable
    private var viewModel: SignUpVM?
    
    /// init methods
    override init() {
        self.viewModel = SignUpVM()
    }
    
    override func start() {
        //setupBinding()
        let vc = SignUpVC()
        vc.viewModel = viewModel
        self.navigationController.setNavigationBarHidden(true, animated: false)
        self.navigationController.pushViewController(vc, animated: true)
    }
}


