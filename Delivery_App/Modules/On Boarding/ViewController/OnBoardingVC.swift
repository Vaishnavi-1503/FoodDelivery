//
//  OnBoardingVC.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 10/03/25.
//

import UIKit

class OnBoardingVC: BaseVC {
    
    @IBOutlet weak var collectionViewOnBoard: UICollectionView!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var lblOnBoardDesc: UILabel!
    @IBOutlet weak var lblOnBoardTitle: UILabel!
    @IBOutlet weak var pageCtrl: UIPageControl!
    
    /// Variables
    var viewModel = OnBoardingVM()
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    @IBAction func btnNextTapped(_ sender: UIButton) {
    }

}

// MARK: - UI & Utilities Methods
extension OnBoardingVC {
    /// Setup initial ui components
    func setupUI() {
        self.navigationController?.navigationBar.isHidden = true
        self.navigationItem.hidesBackButton = true
        
        btnNext.setBorder(radius: btnNext.height/2, bWidth: 1, clr: .primaryButtonColor)
        
        collectionViewOnBoard.delegate = self
        collectionViewOnBoard.dataSource = self
        collectionViewOnBoard.register(cell: OnBoardingCell.self)
        viewModel.setUpOnboardingData()
        collectionViewOnBoard.reloadData()
        setData()
    }
    
    // setData
    func setData() {
        btnNext.setTitle(AppMessages.MessagesString.Next, for: .normal)
        setupFont()
        setupViewPager()
    }
    
    /// Setup the view pager (page control)
    private func setupViewPager() {
        pageCtrl.numberOfPages = viewModel.arrOnboarding.count
        pageCtrl.currentPage = 0
        pageCtrl.currentPageIndicatorTintColor = .primaryButtonColor
        setInitialPageControlImages()
        updatePageControlIndicators(selectedIndex: 0)
    }
    /// Set initial page control images for view pager
    private func setInitialPageControlImages() {
        // Set initial indicator images
        pageCtrl.setIndicatorImage(UIImage(appImage: .selected_PageControl), forPage: 0)
    }
    
    /// Set the unselected and selected page control indicators
    func updatePageControlIndicators(selectedIndex: Int) {
        for i in 0..<viewModel.arrOnboarding.count where i != selectedIndex {
            pageCtrl.setIndicatorImage(UIImage(appImage: .unSelected_PageControl), forPage: i)
        }
        
        // Set text content based on the current index
        updateContentForSelectedPage(selectedIndex: selectedIndex)
    }
    
    /// Update text content and button visibility for the selected page
    private func updateContentForSelectedPage(selectedIndex: Int) {
        DispatchQueue.main.async {
            self.lblOnBoardTitle.text = self.viewModel.arrOnboarding[selectedIndex].title
            self.lblOnBoardDesc.text = self.viewModel.arrOnboarding[selectedIndex].desc
        }
    }
    
    /// setup font
    func setupFont() {
        lblOnBoardTitle.font = UIFont.interRegular(ofSize: .size28)
        lblOnBoardDesc.font = UIFont.interRegular(ofSize: .size13)
        btnNext.titleLabel?.font = UIFont.interRegular(ofSize: .size16)
    }

    
}

