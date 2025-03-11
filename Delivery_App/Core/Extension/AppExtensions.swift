//
//  AppExtensions.swift
//  FoodDelivery
//
//  Created by vaishanavi.sasane on 06/03/25.
//

import Foundation
import UIKit

/// get specific storyboard
extension UIStoryboard {
    
    enum Name: String {
        case launch
        case Main
    }
    
    convenience init(_ name: Name, bundle: Bundle? = nil) {
        self.init(name: name.rawValue, bundle: bundle)
    }
    
    func instantiate<T: UIViewController>(_ type: T.Type) -> T {
//        instantiateViewController(withIdentifier: String(describing: type)) as! T        
        let viewController = instantiateViewController(withIdentifier: String(describing: type))
        return (viewController as? T)!  // This will return nil if the cast fails
    }
}
extension NSObject {
    public var identifier: String {
        String(describing: type(of: self))
    }
    
    public static var identifier: String {
        String(describing: self)
    }
}

extension Data {
    func decodeJSON<T: Decodable>() -> [T]? {
        let jsonDecoder = JSONDecoder()
        if let decodedData = try? jsonDecoder.decode([T].self, from: self) {
            return decodedData
        } else if let decodedSingle = try? jsonDecoder.decode(T.self, from: self) {
            return [decodedSingle]
        } else {
            debugPrint("Failed to decode")
            return nil
        }
    }
}
