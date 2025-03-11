//
//  DelegateView.swift
//  FoodDelivery
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import Foundation

class DelegateView<Input> {
    
    private(set) var accept: ((Input) -> Void)?
    
    func subscribe<Context: AnyObject>(to context: Context, with onNext: @escaping (Context, Input) -> Void) {
        self.accept = { [weak context] input in
            guard let object = context else {
                return
            }
            onNext(object, input)
        }
    }
}
