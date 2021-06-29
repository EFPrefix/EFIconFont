//
//  CGFloat+.swift
//  EFIconFont_Example
//
//  Created by EyreFree on 2019/3/23.
//  Copyright © 2019年 CocoaPods. All rights reserved.
//

import EFFoundation

extension CGFloat {
    #if os(iOS)
    static let statusAndNavigationHeight: CGFloat = statusBarHeight + navigationBarHeight
    #else
    static let statusAndNavigationHeight: CGFloat = CGFloat.statusBar() + navigationBarHeight
    #endif
}
