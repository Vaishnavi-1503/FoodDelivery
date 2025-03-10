//
//  Extension+UIColor.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import Foundation
import UIKit

extension UIColor {
    
    static var primarybackgroundColor: UIColor {
        return UIColor(named: "primaryBackgroundColor") ?? UIColor(hexString: "FFFFFF")
    }
    
    static var primaryButtonColor: UIColor {
        return UIColor(named: "primaryButtonColor") ?? UIColor(hexString: "FC5F12")
    }
    
    static var buttonBorderColor: UIColor {
        return UIColor(named: "buttonBorderColor") ?? UIColor(hexString: "FC5F12")
    }
    
    static var secondaryButtonColor: UIColor {
        return UIColor(named: "secondaryButtonColor") ?? UIColor(hexString: "FFFFFF")
    }
    
    static var primaryLabelColor: UIColor {
        return UIColor(named: "primaryLabelColor") ?? UIColor(hexString: "7C7D7E")
    }
    
    static var primaryButtonTintColor: UIColor {
        return UIColor(named: "primaryButtonTintColor") ?? UIColor(hexString: "FFFFFF")
    }
    
    static var secondaryButtonTintColor: UIColor {
        return UIColor(named: "secondaryButtonTintColor") ?? UIColor(hexString: "FC5F12")
    }
    
    static var primaryTextfieldBackgroundColor: UIColor {
        return UIColor(named: "primaryTextfieldBackgroundColor") ?? UIColor(hexString: "F2F2F2")
    }
    
    static var primaryTextfieldPlaceHolderColor: UIColor {
        return UIColor(named: "primaryTextfieldPlaceHolderColor") ?? UIColor(hexString: "B6B7B7")
    }
    
    static var secondaryLabelColor: UIColor {
        return UIColor(named: "secondaryLabelColor") ?? UIColor(hexString: "4A4B4D")
    }
    
    static var primaryComponentViewColor: UIColor {
        return UIColor(named: "primaryComponentViewColor") ?? UIColor(hexString: "F2F2F2")
    }
    
    static var primaryTextfieldTextColor: UIColor {
        return UIColor(named: "primaryTextfieldTextColor") ?? UIColor(hexString: "B6B7B7")
    }
    
    static var pageConrolColor: UIColor {
        return UIColor(named: "pageConrolColor") ?? UIColor(hexString: "D6D6D6")
    }
    
}
