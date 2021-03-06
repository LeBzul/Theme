//
//  ThemeTextField.swift
//  Theme
//
//  Created by Drouin on 03/04/2019.
//  Copyright © 2019 VersusMind. All rights reserved.
//

import UIKit

@IBDesignable
extension UITextField {
    
  
    // MARK: - FUNCTION
    
    @objc open func putTheme()  {
        if withTheme {
            self.font = UIFont.init(name: UITextField.theme_fontName, size: UITextField.theme_fontSize)
            self.textColor = UITextField.theme_textColor
            self.backgroundColor = UITextField.theme_background
            self.layer.borderColor = UITextField.theme_borderColor.cgColor
            self.borderStyle = UITextField.theme_borderStyle
        }
    }
    
    public static func initTheme(fontSize: CGFloat, fontName: String, textColor: UIColor, backgroundColor: UIColor, borderColor: UIColor, borderStyle: UITextField.BorderStyle) {
        theme_fontSize = fontSize
        theme_fontName = fontName
        theme_textColor = textColor
        theme_background = backgroundColor
        theme_borderColor = borderColor
        theme_borderStyle = borderStyle
    }
    
    // MARK: - VARIABLE
    public struct AssociatedKeys {
        static var theme_fontSize = 16
        static var theme_fontName = "HelveticaNeue"
        static var theme_textColor = UIColor.black
        static var theme_background = UIColor.clear
        static var theme_borderColor = UIColor.gray
        static var theme_borderStyle = UITextField.BorderStyle.line
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
    
    private static var theme_borderStyle: UITextField.BorderStyle {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_borderStyle) as? UITextField.BorderStyle) ?? UITextField.BorderStyle.line
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.theme_borderStyle,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    
    private static var theme_borderColor: UIColor {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_borderColor) as? UIColor) ?? UIColor.gray
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKeys.theme_background,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private static var theme_background: UIColor {
        get {
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_background) as? UIColor) ?? UIColor.black
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
            return (objc_getAssociatedObject(self, &AssociatedKeys.theme_textColor) as? UIColor) ?? UIColor.black
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
