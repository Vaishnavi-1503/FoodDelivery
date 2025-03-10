//
//  UICollectionViewExtension.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import Foundation
import UIKit

extension UICollectionReusableView {
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
extension UICollectionView {
    /// Register Cell
    /// - Uses: collectionView.register(cell: ColorCell.self)
//    func register<T: UICollectionViewCell>(cell: T.Type) {
//        register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
//    }
    
    func register<T: UICollectionViewCell>(cell: T.Type) {
        register(UINib(nibName: T.reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func registerReusableView<T: UICollectionReusableView>(cell: T.Type) {
        register(UINib(nibName: T.reuseIdentifier, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.reuseIdentifier)
//        register(UINib(nibName: T.reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    /// Register Header
    /// - Uses: collectionView.register(header: SimpleHeaderView.self)
    func register<T: UICollectionReusableView>(header: T.Type) {
        register(T.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.reuseIdentifier)
    }
    
    // Register Footer
    /// - Uses: collectionView.register(footer: SimpleFooterView.self)
    func register<T: UICollectionReusableView>(footer: T.Type) {
        register(T.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.reuseIdentifier)
    }
    /// Create cell
    ///  - Uses: return collectionView.dequeueReusableCell(of: OnBoardingCCell.self, for: indexPath) { cell in }
    func dequeueReusableCell<T: UICollectionViewCell>(of class: T.Type, for indexPath: IndexPath, configure: ((T) -> Void)? = nil) -> UICollectionViewCell {
      let cell = dequeueReusableCell(withReuseIdentifier: T.identifier, for: indexPath)
      if let typedCell = cell as? T {
        configure?(typedCell)
      }
      return cell
    }
}
