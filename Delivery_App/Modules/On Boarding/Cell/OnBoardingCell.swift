//
//  OnBoardingCell.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import UIKit

class OnBoardingCell: UICollectionViewCell {
    
    /// IBOutlets
    @IBOutlet weak var imgViewOnBoard: UIImageView!
    
    /// configCell
    /// - Parameter obj: OnBoardingData Pass
    func configCell(obj: OnBoardingData?) {
        guard let obj = obj else { return }
        self.imgViewOnBoard.image = UIImage(named: obj.image)
    }
    
}
