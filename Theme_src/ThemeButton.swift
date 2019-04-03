//
//  ThemeButton.swift
//  Theme
//
//  Created by Drouin on 03/04/2019.
//  Copyright © 2019 VersusMind. All rights reserved.
//

import UIKit

@IBDesignable
extension UIButton {
    
    
    // MARK: - FUNCTION
    
    @objc open func putTheme() {
        if withTheme {
            self.titleLabel?.font = UIFont.init(name: UIButton.theme_fontName, size: UIButton.theme_fontSize)
            self.setTitleColor(UIButton.theme_textColor, for: .normal)
            self.backgroundColor = UIButton.theme_background
            self.layer.cornerRadius = UIButton.theme_cornerRadius
        }
    }
    
    public static func initTheme(fontSize: CGFloat, fontName: String, textColor: UIColor, backgroundColor: UIColor, cornerRadius: CGFloat) {
        theme_fontSize = fontSize
        theme_fontName = fontName
        theme_textColor = textColor
        theme_background = backgroundColor
        theme_cornerRadius = cornerRadius
    }
    
    // MARK: - VARIABLE
    public struct AssociatedKeys {
        static var theme_cornerRadius = 0
        static var theme_fontSize = 16
        static var theme_fontName = "HelveticaNeue"
        static var theme_textColor = UIColor.white
        static var theme_background = UIColor.lightGray
        static var withTheme = false
    }
    
    @IBInspectable
    open var withTheme: Bool {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.withTheme) as? Bool) ?? false
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.withTheme,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private static var theme_cornerRadius: CGFloat {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_cornerRadius) as? CGFloat) ?? 0
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.theme_cornerRadius,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private static var theme_background: UIColor {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_background) as? UIColor) ?? UIColor.lightGray
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.theme_background,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private static var theme_textColor: UIColor {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_textColor) as? UIColor) ?? UIColor.white
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.theme_textColor,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private static var theme_fontName: String {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_fontName) as? String) ?? "system"
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.theme_fontName,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private static var theme_fontSize: CGFloat {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_fontSize) as? CGFloat) ?? 16
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.theme_fontSize,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
}
