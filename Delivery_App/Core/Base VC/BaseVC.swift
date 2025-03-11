//
//  BaseVC.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import Foundation
import UIKit

class BaseVC: UIViewController {
    
    // MARK: - View lifecycle methods
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}


