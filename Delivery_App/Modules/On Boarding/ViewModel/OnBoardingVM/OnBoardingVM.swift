//
//  OnBoardingVM.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import Foundation

class OnBoardingVM {
    let viewDidDisappear = DelegateView<Void>()
    let actionNext = DelegateView<Void>()
    var arrOnboarding = [OnBoardingData]()
}

/// Methods and Utilities
extension OnBoardingVM {
    // set onboarding data in array
    func setUpOnboardingData() {
        arrOnboarding = [
            OnBoardingData(title: AppMessages.OnBordingString.onboardingSlide1Title,
                           desc: AppMessages.OnBordingString.onboardingSlide1Message,
                           image: AppImages.onboardingSlide1Image),
            OnBoardingData(title: AppMessages.OnBordingString.onboardingSlide2Title,
                           desc: AppMessages.OnBordingString.onboardingSlide2Message,
                           image: AppImages.onboardingSlide2Image),
            OnBoardingData(title: AppMessages.OnBordingString.onboardingSlide3Title,
                           desc: AppMessages.OnBordingString.onboardingSlide3Message,
                           image: AppImages.onboardingSlide3Image)
        ]
    }
}


