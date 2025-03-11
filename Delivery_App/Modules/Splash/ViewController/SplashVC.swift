//
//  SplashVC.swift
//  FoodDelivery
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import UIKit

class SplashVC: BaseVC {

    /// Variable(s)
    var viewModel: SplashVM!
    
    /// View cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel?.viewDidSelectLandingPage.accept?(())
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel?.viewDidDisappear.accept?(())
    }
}
