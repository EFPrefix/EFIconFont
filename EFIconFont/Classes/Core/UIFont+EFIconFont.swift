//
//  UIFont+.swift
//  EFIconFont
//
//  Created by EyreFree on 2021/6/28.
//

#if os(macOS)
import AppKit

extension NSFont {
    
    static func loadFontIfNeeded(name: String, path: String) -> Bool {
        if NSFontManager.shared.availableFontFamilies.contains(name) {
            return true
        }
        if path.isEmpty {
            return false
        }
        guard let fontData = NSData(contentsOfFile: path), let dataProvider = CGDataProvider(data: fontData), let cgFont = CGFont(dataProvider) else {
            return false
        }
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(cgFont, &error) {
            var errorDescription: CFString = "Unknown" as CFString
            if let takeUnretainedValue = error?.takeUnretainedValue() {
                errorDescription = CFErrorCopyDescription(takeUnretainedValue)
            }
            print("Unable to load \(path): \(errorDescription)")
            return false
        }
        return true
    }
}
#else
import UIKit

extension UIFont {
    
    static func loadFontIfNeeded(name: String, path: String) -> Bool {
        if UIFont.fontNames(forFamilyName: name).isEmpty == false {
            return true
        }
        if path.isEmpty {
            return false
        }
        guard let fontData = NSData(contentsOfFile: path), let dataProvider = CGDataProvider(data: fontData), let cgFont = CGFont(dataProvider) else {
            return false
        }
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(cgFont, &error) {
            var errorDescription: CFString = "Unknown" as CFString
            if let takeUnretainedValue = error?.takeUnretainedValue() {
                errorDescription = CFErrorCopyDescription(takeUnretainedValue)
            }
            print("Unable to load \(path): \(errorDescription)")
            return false
        }
        return true
    }
}
#endif
