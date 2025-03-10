//
//  ResetPasswordVC.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import UIKit

class ResetPasswordVC: BaseVC {
    
    /// IBOutlets
    @IBOutlet weak var btnSend: UIButton!
    @IBOutlet weak var lblResetPassDesc: UILabel!
    @IBOutlet weak var lblResetPassword: UILabel!
    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var txtEmail: UITextField!
    
    /// Variable(s)
    var viewModel: ResetPasswordVM!
    
    /// View cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    /// UI setup
    func setupUI() {
        btnSend.setBorder(radius: btnSend.height/2, bWidth: 1, clr: .primaryButtonColor)
        lblResetPassword.font = UIFont.interRegular(ofSize: .size30)
        lblResetPassDesc.font = UIFont.interRegular(ofSize: .size14)
        viewEmail.setBorder(radius: viewEmail.height/2, bWidth: 1, clr: .primaryComponentViewColor)
        txtEmail.font = UIFont.interRegular(ofSize: .size14)
        btnSend.titleLabel?.font = UIFont.interRegular(ofSize: .size16)
    }
    
    /// Actions
    @IBAction func btnSendTapped(_ sender: UIButton) {
        viewModel.actionSend.accept?(())
    }
    
}
