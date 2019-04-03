//
//  ThemeView.swift
//  Theme
//
//  Created by Drouin on 03/04/2019.
//  Copyright © 2019 VersusMind. All rights reserved.
//

import UIKit

@IBDesignable
extension UIView {
    
    // Call "putTheme" if exist
    open func applyTheme() {
        if self.responds(to: Selector(("putTheme"))) {
            self.perform(Selector(("putTheme")))
        }
    }
}
