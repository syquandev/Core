//
//  AppFont.swift
//  Core
//
//  Created by Quan on 10/02/2023.
//

import Foundation
import UIKit

//public class AppFont: NSObject{
//
//}

public enum AppFont{
    case light_12
    case regular_12
    case bold_12
    
    case light_15
    case regular_15
    case medium_15
    case semibold_15
    case bold_15
    
    case light_16
    case regular_16
    case medium_16
    case semibold_16
    case bold_16
    
    case light_17
    case regular_17
    case medium_17
    case semibold_17
    case bold_17
    case black_17
    
    case regular_18
    case medium_18
    case semibold_18
    case bold_18
    
    public func getFont() -> UIFont{
        return AppFont.getFont(self)
    }
    
    private static func getFont(_ code: AppFont) -> UIFont {
        var weight = UIFont.Weight.regular
        let name = String(describing: code)
        let fixedSize = CGFloat(13)
        var italic = false
        
        return UIFont.systemFont(ofSize: fixedSize, weight: weight)
    }
}
