//
//  OnBoarding.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import Foundation


struct OnBoardingModel: Codable {
    let arrOnboarding: [OnBoardingData]
}

// MARK: - InApp
struct OnBoardingData: Codable {
    let title, desc, image: String
    
    enum CodingKeys: String, CodingKey {
        case title, desc, image
    }
}
