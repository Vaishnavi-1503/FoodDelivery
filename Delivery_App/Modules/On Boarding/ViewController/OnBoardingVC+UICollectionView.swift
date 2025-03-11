//
//  OnBoardingVC+UICollectionView.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import Foundation

import UIKit
import Foundation

/// UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout Methods
extension OnBoardingVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.arrOnboarding.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(of: OnBoardingCell.self, for: indexPath) as? OnBoardingCell {
            cell.configCell(obj: self.viewModel.arrOnboarding[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        /// 1 - find visible rect
        let visibleRect = CGRect(
            origin: self.collectionViewOnBoard.contentOffset,
            size: self.collectionViewOnBoard.bounds.size)
        
        /// 2 - find visible point from visible rect
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        
        /// 3 - find indexPath based on visible point
        if let visibleIndexPath = self.collectionViewOnBoard.indexPathForItem(at: visiblePoint) {
            self.pageCtrl.currentPage = visibleIndexPath.row
            currentIndex = visibleIndexPath.row
            self.pageCtrl.setIndicatorImage(UIImage(appImage: AppImages.selected_PageControl), forPage: visibleIndexPath.row)
            updatePageControlIndicators(selectedIndex: visibleIndexPath.row)
            
        }
    }
}
