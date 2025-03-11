//
//  SignUpVC.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import UIKit

class SignUpVC: BaseVC {

    /// IB Outlets
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtMobileNo: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblSignUp: UILabel!
    @IBOutlet weak var lblSignUpDesc: UILabel!
    @IBOutlet weak var lblAccDesc: UILabel!
    @IBOutlet var views: [UIView]!
    
    /// Variable(s)
    var viewModel: SignUpVM!
    
    /// View cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel?.viewDidDisappear.accept?(())
    }
    
    /// UI setup method
    func setupUI() {
        btnSignUp.setBorder(radius: btnSignUp.height/2, bWidth: 1, clr: .primaryButtonColor)
        lblSignUp.font = UIFont.interRegular(ofSize: .size30)
        lblSignUpDesc.font = UIFont.interRegular(ofSize: .size14)
        lblAccDesc.font = UIFont.interRegular(ofSize: .size14)

        for view in views {
            view.setBorder(radius: view.height/2, bWidth: 1, clr: .primaryComponentViewColor)
        }
        
        txtEmail.font = UIFont.interRegular(ofSize: .size14)
        txtName.font = UIFont.interRegular(ofSize: .size14)
        txtAddress.font = UIFont.interRegular(ofSize: .size14)
        txtPassword.font = UIFont.interRegular(ofSize: .size14)
        txtMobileNo.font = UIFont.interRegular(ofSize: .size14)
        txtConfirmPassword.font = UIFont.interRegular(ofSize: .size14)
    }

    // MARK: - Actions
    @IBAction func signUpBtnTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func loginBtnTapped(_ sender: UIButton) {
        
    }
}
