//
//  LandingVC.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import UIKit

class LandingVC: BaseVC {

    /// Variable(s)
    var viewModel: LandingVM!
    
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var btnCreateAccount: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    /// View cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.prepareUI()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel?.viewDidDisappear.accept?(())
    }
    
    /// UI setup
    func prepareUI()  {
        btnLogin.setBorder(radius: btnLogin.height/2, bWidth: 1, clr: .primaryButtonColor)
         btnCreateAccount.setBorder(radius: btnCreateAccount.height/2, bWidth: 1, clr: .primaryButtonColor)
        lblDesc.font = UIFont.interRegular(ofSize: .size13)
        btnLogin.titleLabel?.font = UIFont.interRegular(ofSize: .size16)
    }
    
    // MARK: - Actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        viewModel.navigateToLoginPage.accept?(())
    }
    
    
    @IBAction func createAccButtonTapped(_ sender: UIButton) {
        debugPrint("createAccButtonTapped")
    }

}
