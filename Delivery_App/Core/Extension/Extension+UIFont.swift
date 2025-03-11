//
//  Extension+UIFont.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import Foundation
import UIKit

extension UIFont {
    
    private static func customFont(name: String, size: Double) -> UIFont {
        let font = UIFont(name: name, size: size)
        assert(font != nil, "Can't load font: \(name)")
        return font ?? UIFont.systemFont(ofSize: size)
    }
    
    static func soraRegularFont(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Sora-Regular", size: size.rawValue)
    }
    
    static func soraExtraLightFont(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Sora-ExtraLight", size: size.rawValue)
    }
    
    static func soraThinFont(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Sora-Thin", size: size.rawValue)
    }
    
    static func soraLightFont(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Sora-Light", size: size.rawValue)
    }
    
    static func soraMediumFont(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Sora-Medium", size: size.rawValue)
    }
    
    static func soraSemiBoldFont(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Sora-SemiBold", size: size.rawValue)
    }
    
    static func soraBoldFont(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Sora-Bold", size: size.rawValue)
    }
    
    static func soraExtraBoldFont(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Sora-ExtraBold", size: size.rawValue)
    }
    
    static func interBlack(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-Black", size: size.rawValue)
    }
    
    static func interBold(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-Bold", size: size.rawValue)
    }
    
    static func interExtraBold(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-ExtraBold", size: size.rawValue)
    }
    
    static func interExtraLight(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-ExtraLight", size: size.rawValue)
    }
    
    static func interLight(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-Light", size: size.rawValue)
    }
    
    static func interMedium(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-Medium", size: size.rawValue)
    }
    
    static func interRegular(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-Regular", size: size.rawValue)
    }
    
    static func interSemiBold(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-SemiBold", size: size.rawValue)
    }
    
    static func interThin(ofSize size: FontSize) -> UIFont {
        return customFont(name: "Inter-Thin", size: size.rawValue)
    }
}

enum FontSize: Double, CaseIterable {
    case size10 = 10
    case size12 = 12
    case size13 = 13
    case size14 = 14
    case size15 = 15
    case size16 = 16
    case size17 = 17
    case size18 = 18
    case size19 = 19
    case size20 = 20
    case size21 = 21
    case size22 = 22
    case size23 = 23
    case size24 = 24
    case size25 = 25
    case size26 = 26
    case size27 = 27
    case size28 = 28
    case size29 = 29
    case size30 = 30
    case size36 = 36
    case size37 = 37
    
    var value: CGFloat {
        return CGFloat(self.rawValue)
    }
}

