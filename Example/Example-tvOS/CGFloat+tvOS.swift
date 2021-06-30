//
//  CGFloat+tvOS.swift
//  Example-tvOS
//
//  Created by EyreFree on 2021/6/29.
//

import Foundation
import UIKit

extension CGFloat {

    static let zeroHeight: CGFloat = leastNonzeroMagnitude
    static let screenWidth: CGFloat = UIScreen.screens.first?.bounds.size.width ?? 0
    static let screenHeight: CGFloat = UIScreen.screens.first?.bounds.size.height ?? 0
    static let bottomSafeAreaHeight: CGFloat = 0
    
    // ~= 20
    static func statusBar() -> CGFloat {
        #if os(iOS)
        // debugPrint("statusBar: \(UIApplication.shared.statusBarFrame.height)")
        return UIApplication.shared.statusBarFrame.height
        #else
        return 0
        #endif
    }

    // ~= 44
    static func navigationBar(_ controller: UIViewController?) -> CGFloat {
        if let navi = controller?.navigationController {
            // debugPrint("navigationBar: \(navi.navigationBar.frame.height)")
            return navi.navigationBar.frame.height
        }
        // debugPrint("navigationBar: 0")
        return 0
    }

    // ~= 49
    static func tabBar(_ controller: UIViewController?) -> CGFloat {
        if let tabBar = controller?.tabBarController {
            // debugPrint("tabBar: \(tabBar.tabBar.frame.height)")
            return tabBar.tabBar.frame.height
        }
        // debugPrint("tabBar: 0")
        return 0
    }
}
