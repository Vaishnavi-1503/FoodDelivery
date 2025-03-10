//
//  OTPVC.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import UIKit

class OTPVC: BaseVC {

    @IBOutlet weak var lblOTPDesc: UILabel!
    @IBOutlet weak var lblOTPHeader: UILabel!
    @IBOutlet var views: [UIView]!
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet weak var btnClickHere: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    
    /// Variable(s)
    var viewModel: OTPVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        // Do any additional setup after loading the view.
    }

    func prepareUI() {
        btnNext.setBorder(radius: btnNext.height/2, bWidth: 1, clr: .primaryButtonColor)
        lblOTPHeader.font = UIFont.interRegular(ofSize: .size30)
        lblOTPDesc.font = UIFont.interRegular(ofSize: .size14)
        for view in views {
            view.setBorder(radius: 10, bWidth: 1, clr: .primaryComponentViewColor)
        }
        for txt in textFields {
            txt.font = UIFont.interRegular(ofSize: .size37)
        }
        lblOTPHeader.font = UIFont.interRegular(ofSize: .size30)
        lblOTPDesc.font = UIFont.interRegular(ofSize: .size14)
        btnNext.titleLabel?.font = UIFont.interRegular(ofSize: .size16)
    }

    /// Actions
    @IBAction func btnNextTapped(_ sender: UIButton) {
        viewModel.navigateToNewPasswordPage.accept?(())
    }
    
    
    @IBAction func btnClickHereTapped(_ sender: UIButton) {
    }
}
