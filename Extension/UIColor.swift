//
//  UIColor.swift
//  GeekHomework
//
//  Created by Николя on 18/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
