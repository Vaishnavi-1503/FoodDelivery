//
//  NewPasswordVC.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import UIKit

class NewPasswordVC: BaseVC {
    
    /// IBOutlets
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var viewConfirmPassword: UIView!
    @IBOutlet weak var txtNewPassword: UITextField!
    @IBOutlet weak var viewNewPassword: UIView!
    @IBOutlet weak var lblNewPassDesc: UILabel!
    @IBOutlet weak var lblNewPassword: UILabel!
    
    /// Variable(s)
    var viewModel: NewPasswordVM!
    
    /// View cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }

    /// UI setup
    func setupUI() {
        btnNext.setBorder(radius: btnNext.height/2, bWidth: 1, clr: .primaryButtonColor)
        btnNext.titleLabel?.font = UIFont.interRegular(ofSize: .size16)
        lblNewPassword.font = UIFont.interRegular(ofSize: .size30)
        lblNewPassDesc.font = UIFont.interRegular(ofSize: .size14)
        viewNewPassword.setBorder(radius: viewNewPassword.height/2, bWidth: 1, clr: .primaryComponentViewColor)
        viewConfirmPassword.setBorder(radius: viewNewPassword.height/2, bWidth: 1, clr: .primaryComponentViewColor)
        txtNewPassword.font = UIFont.interRegular(ofSize: .size14)
        txtConfirmPassword.font = UIFont.interRegular(ofSize: .size14)
    }
    
    /// Actions
    @IBAction func btnNextTapped(_ sender: UIButton) {
    }
}
