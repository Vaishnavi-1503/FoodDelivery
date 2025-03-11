//
//  OnBoardingCordinator.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import Foundation

class OnBoardingCordinator: BaseCoordinator {
    
    /// Variable
    private var viewModel: OnBoardingVM?
    
    /// init methods
    override init() {
        self.viewModel = OnBoardingVM()
    }
    
    override func start() {
        let vc = OnBoardingVC()
        if let model = self.viewModel {
            vc.viewModel = model
        }
        self.navigationController.setNavigationBarHidden(true, animated: false)
        self.navigationController.pushViewController(vc, animated: true)
    }
}
