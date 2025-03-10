//
//  LoginVC.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import UIKit

class LoginVC: BaseVC {
    
    /// IBOutlets
    @IBOutlet weak var lblLoginDesc: UILabel!
    @IBOutlet weak var lblLogin: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var viewGoogle: UIView!
    @IBOutlet weak var viewPassword: UIView!
    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var viewFaceBook: UIView!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnFaceBook: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var btnForgotPassword: UIButton!
    @IBOutlet weak var lblAccDesc: UILabel!
    
    /// Variable(s)
    var viewModel: LoginVM!
    
    /// View cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel?.viewDidDisappear.accept?(())
    }
    
    func prepareUI() {
        viewEmail.setBorder(radius: viewEmail.height/2, bWidth: 1, clr: .primaryComponentViewColor)
        viewPassword.setBorder(radius: viewEmail.height/2, bWidth: 1, clr: .primaryComponentViewColor)
        btnLogin.setBorder(radius: btnLogin.height/2, bWidth: 1, clr: .primaryButtonColor)
        viewFaceBook.setBorder(radius: viewFaceBook.height/2, bWidth: 1, clr: UIColor(hexString: "#367FC0"))
        viewGoogle.setBorder(radius: viewGoogle.height/2, bWidth: 1, clr: UIColor(hexString: "#DD4B39"))
        
        lblLogin.font = UIFont.interRegular(ofSize: .size30)
        lblLoginDesc.font = UIFont.interRegular(ofSize: .size14)
        lblAccDesc.font = UIFont.interRegular(ofSize: .size14)

        txtEmail.font = UIFont.interRegular(ofSize: .size14)
        txtpassword.font = UIFont.interRegular(ofSize: .size14)
        btnLogin.titleLabel?.font = UIFont.interRegular(ofSize: .size16)
        btnGoogle.titleLabel?.font = UIFont.interRegular(ofSize: .size12)
        btnFaceBook.titleLabel?.font = UIFont.interRegular(ofSize: .size12)
        btnForgotPassword.titleLabel?.font = UIFont.interRegular(ofSize: .size14)
    }


    // MARK: - Actions
    
    @IBAction func signUpBtnTapped(_ sender: UIButton) {
        viewModel.navigateToSignPage.accept?(())
    }
    
    @IBAction func btnForgotPasswordTapped(_ sender: UIButton) {
        viewModel.navigateToResetPasswordPage.accept?(())
    }
    
    @IBAction func loginBtnTapped(_ sender: UIButton) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
