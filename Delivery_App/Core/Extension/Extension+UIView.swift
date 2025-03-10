//
//  Extension+UIView.swift
//  Delivery_App
//
//  Created by vaishanavi.sasane on 07/03/25.
//

import Foundation
import UIKit

extension UIView {
    var hasNotch: Bool {
        if #available(iOS 11.0, *) {
            // Safe area insets are non-zero for devices with a notch
            return self.safeAreaInsets.top > 20
        }
        return false
    }
}

extension UIView {
    
    var height: CGFloat {
        return self.frame.size.height
    }
    var width: CGFloat {
        return self.frame.size.width
    }
    
    func setBorder(radius: CGFloat = 0, bWidth: CGFloat = 1.0, clr: UIColor = UIColor.primaryButtonColor) {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = bWidth
        self.layer.borderColor = clr.cgColor
    }
    
    func roundTopCorners(cornerRadius: CGFloat, borderWidth: CGFloat, borderColor: UIColor) {
        // Set the corner radius
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        // Set the border width and color
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        
        // Enable masks to bounds
        self.layer.masksToBounds = true
    }
    
    
}

// MARK: - Extension of UIView For giving the round shape to any UIView. -

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            if newValue == 0 {
                layer.cornerRadius =  self.frame.height / 2
            } else if newValue > 0 {
                self.layer.cornerRadius = newValue
                self.layer.masksToBounds = true
            }
        }
    }
    
    
    @IBInspectable fileprivate var borderColor: UIColor? {
        get {
            guard let borderColor = self.layer.borderColor else { return nil }
            return UIColor(cgColor: borderColor)
        } set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable fileprivate var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        } set {
            self.layer.borderWidth = newValue
        }
    }
    
    /// This method is used to giving the round shape to any UIView
    func roundView() {
        
        layer.cornerRadius = (CViewHeight > CViewWidth)
        ? CViewWidth/2.0
        : CViewHeight/2.0
        
        layer.masksToBounds = true
    }
}

// MARK: - Extension of UIView For getting any UIView from XIB. -
extension UIView {
    
    /// This static Computed property is used to getting any UIView from XIB. This Computed property returns UIView? , it means this method return nil value also , while using this method please use if let. If you are not using if let and if this method returns nil and when you are trying to unwrapped this value("UIView!") then application will crash.
    static var viewFromXib: UIView? {
        return self.viewWithNibName(strViewName: "\(self)")
    }
    
    /// This static method is used to getting any UIView with specific name.
    ///
    /// - Parameter strViewName: A String Value of UIView.
    /// - Returns: This Method returns UIView? , it means this method return nil value also , while using this method please use if let. If you are not using if let and if this method returns nil and when you are trying to unwrapped this value("UIView!") then application will crash.
    static func viewWithNibName(strViewName: String) -> UIView? {
        
        guard let view = Bundle.main.loadNibNamed(
            strViewName,
            owner: self,
            options: nil)?.first else {
            return nil
        }
        
        return view as? UIView
    }
}

// MARK: - Extension of UIView For removing all the subviews of UIView. -

extension UIView {
    
    /// This method is used for removing all the subviews of UIView.
    func removeAllSubviews() {
        
        for subview in self.subviews {
            subview.removeFromSuperview()
        }
    }
    
    /// This method is used for removing all the subviews from InterfaceBuilder for perticular tag.
    /// - Parameter tag: Pass the tag value of UIView , and that UIView and its all subviews will remove from InterfaceBuilder.
    func removeAllSubviewsOfTag(tag: Int) {
        
        for subview in self.subviews where subview.tag == tag {
            subview.removeFromSuperview()
        }
    }
}

// MARK: - Extension of UIView For draw a shadowView of it. -

extension UIView {
    
    /// This method is used to draw a shadowView for perticular UIView.
    ///
    /// - Parameters:
    ///   - color: Pass the UIColor that you want to see as shadowColor.
    ///   - shadowOffset: Pass the CGSize value for how much far you want shadowView from parentView.
    ///   - shadowRadius: Pass the CGFloat value for how much length(Blur Spreadness) you want in shadowView.
    func shadow(
        color: UIColor,
        shadowOffset: CGSize,
        shadowRadius: CGFloat
    ) {
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = 1.0
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
    /// This method is used to draw a shadowView for perticular UIView.
    ///
    /// - Parameters:
    ///   - cornerRadius: Pass the CGFloat value for corner radius of view.
    ///   - color: Pass the UIColor that you want to see as shadowColor.
    ///   - shadowOffset: Pass the CGSize value for how much far you want shadowView from parentView.
    ///   - shadowRadius: Pass the CGFloat value for how much length(Blur Spreadness) you want in shadowView.
    ///   - shadowOpacity: Pass the Float value for how much opacity you want for shadow.
    func shadowWithCornerRadius(
        cornerRadius: CGFloat = 24,
        color: UIColor = .gray,
        shadowOffset: CGSize = CGSize(width: 0, height: 2),
        shadowRadius: CGFloat = 3,
        shadowOpacity: Float = 0.5
    ) {
        
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
    }
}

extension UIView{
    
    func addShadowAndCornerRadiusWithBorder() {
        self.layer.shadowColor = UIColor.primaryButtonColor.cgColor
        self.layer.shadowOpacity = 0.1
        self.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        self.layer.shadowRadius = 0.0
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 28
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.primaryButtonColor.cgColor
    }
    
    func addShadow(sides: Sides, constant: Int, alpha: Int){
        if(constant > 0 && alpha > 0){
        switch sides {
            case .leftRight:
   
                let view = UIView(frame: CGRect(x: -CGFloat(constant), y: 0, width: self.bounds.width + CGFloat((constant * 2)), height: self.bounds.height))
                self.addSubview(view)

                addMask(sides: .leftRight, view: view, constant: constant, shadowRadius: alpha)
                
            case .topBottom:

                let view = UIView(frame: CGRect(x: 0, y: -CGFloat(constant), width: self.bounds.width , height: self.bounds.height + CGFloat(constant * 2)))
                self.addSubview(view)

                addMask(sides: .topBottom, view: view, constant: constant, shadowRadius: alpha)

            }
        }
    }
    
    private func addMask(sides:Sides, view: UIView, constant: Int, shadowRadius:Int){
        let mutablePath = CGMutablePath()
        let mask = CAShapeLayer()

        switch sides {
        case .leftRight:
            
            mutablePath.addRect(CGRect(x: -CGFloat(constant), y: 0, width: view.bounds.width, height: view.bounds.height))

            mutablePath.addRect(CGRect(x: CGFloat(constant) , y: 0, width: view.bounds.width , height: view.bounds.height))

            
        case .topBottom:
            
            mutablePath.addRect(CGRect(x: 0, y: -CGFloat(constant), width: view.bounds.width, height: view.bounds.height))

            mutablePath.addRect(CGRect(x: 0, y: CGFloat(constant) , width: view.bounds.width , height: view.bounds.height))
        }

        mask.path = mutablePath

        mask.fillRule = CAShapeLayerFillRule.evenOdd
        mask.fillColor  = UIColor(white:1.0, alpha: 0.2).cgColor
        view.layer.mask = mask
        view.layer.addSublayer(mask)
        mask.shadowColor = UIColor.primaryButtonColor.cgColor
        mask.shadowRadius = CGFloat(shadowRadius)
        mask.shadowOpacity = 1.0
        mask.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.primaryButtonColor.cgColor
    }
}



enum Sides{
    case leftRight
    case topBottom
}


// MARK: - Extension of UIView For adding the border to UIView at any position. -
extension UIView {
    
    /// A Enum UIPosition Describes the Different Postions.
    ///
    /// - top: Will add border at top of The UIView.
    /// - left: Will add border at left of The UIView.
    /// - bottom: Will add border at bottom of The UIView.
    /// - right: Will add border at right of The UIView.
    enum UIPosition {
        case top
        case left
        case bottom
        case right
    }
    
    /// This method is used to add the border to perticular UIView at any position.
    ///
    /// - Parameters:
    ///   - position: Pass the enum value of UIPosition , according to the enum value it will add the border for that position.
    ///   - color: Pass the UIColor which you want to see in a border.
    ///   - width: CGFloat value - (Optional - if you are passing nil then method will automatically set this value same as Parent's width) OR pass how much width you want for border. For top and bottom UIPosition you can pass nil.
    ///   - height: CGFloat value - (Optional - if you are passing nil then method will automatically set this value same as Parent's height) OR pass how much height you want for border. For left and right UIPosition you can pass nil.
    func addBorder(
        position: UIPosition = .top,
        color: UIColor = .black,
        width: CGFloat? = nil,
        height: CGFloat? = nil
    ) {
        
        let borderLayer = CALayer()
        borderLayer.backgroundColor = color.cgColor
        
        var xPosition: CGFloat = 0.0
        var yPosition: CGFloat = 0.0
        var layerWidth: CGFloat = width ?? 1.0
        var layerHeight: CGFloat = height ?? 1.0
        
        switch position {
            
        case .top:
            layerWidth = width ?? CViewWidth
            
        case .left:
            layerHeight = height ?? CViewHeight
            
        case .bottom:
            yPosition = CViewHeight - (height ?? 0.0)
            layerWidth = width ?? CViewWidth
            
        case .right:
            xPosition = CViewWidth - (width ?? 0.0)
            layerHeight = height ?? CViewHeight
        }
        
        borderLayer.frame = CGRect(
            origin: CGPoint(
                x: xPosition,
                y: yPosition
            ),
            size: CGSize(
                width: layerWidth,
                height: layerHeight
            )
        )
        
        self.layer.addSublayer(borderLayer)
    }
    
    /// To add the same border on multiple positions.
    /// Pass the positions into array which side wants to show the border.
    /// example:- [.top, .left, .bottom, .right]
    func addBorder(
        positions: [UIPosition] = [.top],
        color: UIColor = .black,
        width: CGFloat? = nil,
        height: CGFloat? = nil) {
            
            for position in positions {
                
                addBorder(
                    position: position,
                    color: color,
                    width: width,
                    height: height
                )
            }
            
        }
}

extension UIView {
    
    var snapshotImage: UIImage? {
        
        var snapShotImage: UIImage?
        UIGraphicsBeginImageContext(self.CViewSize)
        if let context = UIGraphicsGetCurrentContext() {
            self.layer.render(in: context)
            if let image = UIGraphicsGetImageFromCurrentImageContext() {
                UIGraphicsEndImageContext()
                snapShotImage = image
            }
        }
        return snapShotImage
    }
}

extension UIView {
    
    var CViewSize: CGSize {
        return self.frame.size
    }
    var CViewOrigin: CGPoint {
        return self.frame.origin
    }
    var CViewWidth: CGFloat {
        return self.CViewSize.width
    }
    var CViewHeight: CGFloat {
        return self.CViewSize.height
    }
    var CViewX: CGFloat {
        return self.CViewOrigin.x
    }
    var CViewY: CGFloat {
        return self.CViewOrigin.y
    }
    var CViewCenter: CGPoint {
        return CGPoint(x: self.CViewWidth/2.0, y: self.CViewHeight/2.0)
    }
    var CViewCenterX: CGFloat {
        return CViewCenter.x
    }
    var CViewCenterY: CGFloat {
        return CViewCenter.y
    }
}

extension UIView {
    
    func CViewSetSize(width: CGFloat, height: CGFloat) {
        CViewSetWidth(width: width)
        CViewSetHeight(height: height)
    }
    
    func CViewSetOrigin(x: CGFloat, y: CGFloat) {
        CViewSetX(x: x)
        CViewSetY(y: y)
    }
    
    func CViewSetWidth(width: CGFloat) {
        self.frame.size.width = width
    }
    
    func CViewSetHeight(height: CGFloat) {
        self.frame.size.height = height
    }
    
    func CViewSetX(x: CGFloat) {
        self.frame.origin.x = x
    }
    
    func CViewSetY(y: CGFloat) {
        self.frame.origin.y = y
    }
    
    func CViewSetCenter(x: CGFloat, y: CGFloat) {
        CViewSetCenterX(x: x)
        CViewSetCenterY(y: y)
    }
    
    func CViewSetCenterX(x: CGFloat) {
        self.center.x = x
    }
    
    func CViewSetCenterY(y: CGFloat) {
        self.center.y = y
    }
}

extension UIView {
    
    func setCornerRadius(_ radius: CGFloat, corners: UIRectCorner) {
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    func alternateCorners(_ corners: CACornerMask, radius: CGFloat) {
        if #available(iOS 11, *) {
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = corners
        } else {
            var cornerMask = UIRectCorner()
            if corners.contains(.layerMinXMinYCorner) {
                cornerMask.insert(.topLeft)
            }
            if corners.contains(.layerMaxXMinYCorner) {
                cornerMask.insert(.topRight)
            }
            if corners.contains(.layerMinXMaxYCorner) {
                cornerMask.insert(.bottomLeft)
            }
            if corners.contains(.layerMaxXMaxYCorner) {
                cornerMask.insert(.bottomRight)
            }
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: cornerMask, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            self.layer.mask = mask
        }
    }
}

extension UIView {
    
    func pin(_ type: NSLayoutConstraint.Attribute) {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = NSLayoutConstraint(item: self, attribute: type,
                                            relatedBy: .equal,
                                            toItem: superview, attribute: type,
                                            multiplier: 1, constant: 0)
        
        constraint.priority = UILayoutPriority.init(999)
        constraint.isActive = true
    }
    
    func pinEdges() {
        pin(.top)
        pin(.bottom)
        pin(.leading)
        pin(.trailing)
    }
}

// MARK: - Applies Shadow to the view
extension UIView {
    func applyCustomShadow() {
        guard self.frame != .zero else { return }
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius)
        let shadowLayer = CALayer()
        shadowLayer.shadowPath = shadowPath.cgPath
        shadowLayer.shadowColor = UIColor(red: 0.443, green: 0.443, blue: 0.478, alpha: 0.2).cgColor
        shadowLayer.shadowOpacity = 1.0
        shadowLayer.shadowRadius = 8.0
        shadowLayer.shadowOffset = CGSize(width: 0, height: 4)
        shadowLayer.compositingFilter = "multiplyBlendMode"
        shadowLayer.bounds = self.bounds
        shadowLayer.position = CGPoint(x: self.bounds.midX, y: self.bounds.midY)
        self.layer.insertSublayer(shadowLayer, at: 0)
    }
}

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}

extension UIView {
    func setGradientBackground() {
        // Remove existing gradient layers
        layer.sublayers?.filter { $0 is CAGradientLayer }.forEach { $0.removeFromSuperlayer() }
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        
        if traitCollection.userInterfaceStyle == .dark {
            gradientLayer.colors = [UIColor.black.cgColor, UIColor.darkGray.cgColor]
        } else if traitCollection.userInterfaceStyle == .unspecified {
            gradientLayer.colors = [UIColor.orange.cgColor, UIColor.lightGray.cgColor]
        } else {
            gradientLayer.colors = [UIColor.white.cgColor, UIColor.lightGray.cgColor]
        }
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UIView {
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder?.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}

extension UIImage {
    func resized(to size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        defer { UIGraphicsEndImageContext() }
        
        self.draw(in: CGRect(origin: .zero, size: size))
        return UIGraphicsGetImageFromCurrentImageContext() ?? UIImage()
    }
}

extension UIView {
    var safeAreaTop: CGFloat {
        return self.safeAreaInsets.top
    }
    
    var safeAreaBottom: CGFloat {
        return self.safeAreaInsets.bottom
    }
    
    var safeAreaLeft: CGFloat {
        return self.safeAreaInsets.left
    }
    
    var safeAreaRight: CGFloat {
        return self.safeAreaInsets.right
    }
    
    
    // Use associated objects to store the closure in the view
    private struct AssociatedKeys {
        static var tapGestureRecognizer = "tapGestureRecognizer"
        static var tapAction = "tapAction"
    }
    
    typealias TapAction = (() -> Void)?
    
    /// Adds the gesture recognizer to a view and calls the block of code when the view is tapped by the user
    ///
    /// - Parameter action: TapAction closure which helps to call the block of code when the user taps the screen
    func addTapGestureRecognizer(action: TapAction) {
        // Store the closure in the view using associated objects
        objc_setAssociatedObject(self, &AssociatedKeys.tapAction, action, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        // Check if the gesture recognizer is already added, if not add it
        if objc_getAssociatedObject(self, &AssociatedKeys.tapGestureRecognizer) as? UITapGestureRecognizer == nil {
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
            self.addGestureRecognizer(tapGestureRecognizer)
            objc_setAssociatedObject(self, &AssociatedKeys.tapGestureRecognizer, tapGestureRecognizer, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    /// Handles the tap action by the selector method and calls the closure
    ///
    /// - Parameter sender: UITapGestureRecognizer
    @objc private func handleTap(_ sender: UITapGestureRecognizer) {
        if let action = objc_getAssociatedObject(self, &AssociatedKeys.tapAction) as? (() -> Void) {
            action()
        }
    }
}

/*
extension UIView {
    class func loadNib<T: UIView>(_ viewType: T.Type) -> T {
        let className = String.className(viewType)
        return Bundle(for: viewType).loadNibNamed(className, owner: nil, options: nil)!.first as! T
    }
    
    class func loadNib() -> Self {
        return loadNib(self)
    }
}
 */

/// Check device has notch or not
extension UIDevice {
    var hasNotch: Bool {
        let keyWindow = UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .map { $0 as? UIWindowScene }
            .compactMap { $0 }
            .first?.windows
            .filter { $0.isKeyWindow }.first
        
        let topInset = keyWindow?.safeAreaInsets.top ?? 0
        return topInset > 20 // Devices without a notch usually have a top inset of 20 or less
    }
}
