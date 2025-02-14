//
//  EFIconFontProtocol.swift
//  EFIconFont
//
//  Created by EyreFree on 2019/3/20.
//
//  Copyright (c) 2019 EyreFree <eyrefree@eyrefree.org>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation
#if os(watchOS)
import WatchKit
#endif
#if os(macOS)
import AppKit
#else
import UIKit
#endif

fileprivate struct AssociatedKeys {
    nonisolated(unsafe) static var attributes = "attributes"
}

public protocol EFIconFontProtocol {

    // `name` is not necessarily equal to .ttf file name
    var name: String { get }

    // `path` is path of .ttf file
    var path: String { get }

    // `attributes` is style of icon
    var attributes: [NSAttributedString.Key : Any] { set get }

    // `unicode` is unique identifier of particular icon
    var unicode: String { get }
    
    // `font` is UIFont of icon with input font size
    #if os(macOS)
    func font(size fontSize: CGFloat) -> NSFont?
    #else
    func font(size fontSize: CGFloat) -> UIFont?
    #endif
}

public extension EFIconFontProtocol {

    // MARK:- Default
    var path: String {
        return Bundle(for: EFIconFont.self).path(forResource: name, ofType: "ttf") ?? Bundle.main.path(forResource: name, ofType: "ttf") ?? ""
    }

    // MARK:- Style
    var attributes: [NSAttributedString.Key : Any] {
        get {
            if let attributes = objc_getAssociatedObject(self, &AssociatedKeys.attributes) as? [NSAttributedString.Key : Any] {
                return attributes
            }
            let newAttributes: [NSAttributedString.Key : Any] = [:]
            objc_setAssociatedObject(self, &AssociatedKeys.attributes, newAttributes, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return newAttributes
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.attributes, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    #if os(macOS)
    var foregroundColor: NSColor? {
        get {
            return attributes[NSAttributedString.Key.foregroundColor] as? NSColor
        }
        set {
            if let newValue = newValue {
                attributes.updateValue(newValue, forKey: NSAttributedString.Key.foregroundColor)
            } else {
                attributes.removeValue(forKey: NSAttributedString.Key.foregroundColor)
            }
        }
    }
    #else
    var foregroundColor: UIColor? {
        get {
            return attributes[NSAttributedString.Key.foregroundColor] as? UIColor
        }
        set {
            if let newValue = newValue {
                attributes.updateValue(newValue, forKey: NSAttributedString.Key.foregroundColor)
            } else {
                attributes.removeValue(forKey: NSAttributedString.Key.foregroundColor)
            }
        }
    }
    #endif

    #if os(macOS)
    var backgroundColor: NSColor? {
        get {
            return attributes[NSAttributedString.Key.backgroundColor] as? NSColor
        }
        set {
            if let newValue = newValue {
                attributes.updateValue(newValue, forKey: NSAttributedString.Key.backgroundColor)
            } else {
                attributes.removeValue(forKey: NSAttributedString.Key.backgroundColor)
            }
        }
    }
    #else
    var backgroundColor: UIColor? {
        get {
            return attributes[NSAttributedString.Key.backgroundColor] as? UIColor
        }
        set {
            if let newValue = newValue {
                attributes.updateValue(newValue, forKey: NSAttributedString.Key.backgroundColor)
            } else {
                attributes.removeValue(forKey: NSAttributedString.Key.backgroundColor)
            }
        }
    }
    #endif

    // MARK:- Font
    #if os(macOS)
    func font(size fontSize: CGFloat) -> NSFont? {
        if !NSFont.loadFontIfNeeded(name: name, path: path) { return nil }
        return NSFont(name: name, size: fontSize)
    }
    #else
    func font(size fontSize: CGFloat) -> UIFont? {
        if !UIFont.loadFontIfNeeded(name: name, path: path) { return nil }
        return UIFont(name: name, size: fontSize)
    }
    #endif

    // MARK:- String
    func attributedString(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> NSAttributedString? {
        guard let attributes = attributesWith(size: fontSize, attributes: attributes) else { return nil }
        return NSAttributedString(string: self.unicode, attributes: attributes)
    }

    #if os(macOS)
    func attributedString(size fontSize: CGFloat, foregroundColor: NSColor? = nil, backgroundColor: NSColor? = nil) -> NSAttributedString? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return attributedString(size: fontSize, attributes: attributesCombine)
    }
    #else
    func attributedString(size fontSize: CGFloat, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> NSAttributedString? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return attributedString(size: fontSize, attributes: attributesCombine)
    }
    #endif
    
    private func attributesWith(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> [NSAttributedString.Key : Any]? {
        guard let font = font(size: fontSize) else { return nil }
        var attributesCombine: [NSAttributedString.Key : Any] = self.attributes
        if let attributes = attributes {
            for attribute in attributes {
                attributesCombine.updateValue(attribute.value, forKey: attribute.key)
            }
        }
        attributesCombine.updateValue(font, forKey: NSAttributedString.Key.font)
        return attributesCombine
    }

    // MARK:- Image
    #if os(macOS)
    func image(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> NSImage? {
        guard let imageString: NSAttributedString = attributedString(size: fontSize, attributes: attributes) else { return nil }
        let rect = imageString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: fontSize), options: .usesLineFragmentOrigin, context: nil)
        let imageSize: CGSize = rect.size
        // let scale: CGFloat = NSScreen.mainScreen?.backingScaleFactor ?? 1
        let image = NSImage(size: imageSize)
        image.lockFocus()
        imageString.draw(in: rect)
        image.unlockFocus()
        return image
    }
    #else
    @MainActor func image(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> UIImage? {
        guard let imageString: NSAttributedString = attributedString(size: fontSize, attributes: attributes) else { return nil }
        let rect = imageString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: fontSize), options: .usesLineFragmentOrigin, context: nil)
        let imageSize: CGSize = rect.size
        #if os(watchOS)
        let screenScale: CGFloat = WKInterfaceDevice.current().screenScale
        #elseif os(visionOS)
        let screenScale: CGFloat = UITraitCollection.current.displayScale
        #else
        let screenScale: CGFloat = UIScreen.main.scale
        #endif
        UIGraphicsBeginImageContextWithOptions(imageSize, false, screenScale)
        imageString.draw(in: rect)
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    #endif

    #if os(macOS)
    func image(size fontSize: CGFloat, foregroundColor: NSColor? = nil, backgroundColor: NSColor? = nil) -> NSImage? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return image(size: fontSize, attributes: attributesCombine)
    }
    #else
    @MainActor func image(size fontSize: CGFloat, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> UIImage? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return image(size: fontSize, attributes: attributesCombine)
    }
    #endif

    #if os(macOS)
    func image(size imageSize: CGSize, attributes: [NSAttributedString.Key : Any]?) -> NSImage? {
        guard let imageString: NSAttributedString = attributedString(size: 1, attributes: attributes) else { return nil }
        let rect = imageString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 1), options: .usesLineFragmentOrigin, context: nil)
        let widthScale = imageSize.width / rect.width
        let heightScale = imageSize.height / rect.height
        let scale = (widthScale < heightScale) ? widthScale : heightScale
        let scaledWidth = rect.width * scale
        let scaledHeight = rect.height * scale
        var anchorPoint = CGPoint.zero
        if widthScale < heightScale {
            anchorPoint.y = (imageSize.height - scaledHeight) / 2
        } else if widthScale > heightScale {
            anchorPoint.x = (imageSize.width - scaledWidth) / 2
        }
        var anchorRect = CGRect.zero
        anchorRect.origin = anchorPoint
        anchorRect.size.width = scaledWidth
        anchorRect.size.height = scaledHeight
        guard let imageStringScale: NSAttributedString = attributedString(size: scale, attributes: attributes) else { return nil }
        // let scale: CGFloat = NSScreen.mainScreen?.backingScaleFactor ?? 1
        let image = NSImage(size: imageSize)
        image.lockFocus()
        imageStringScale.draw(in: anchorRect)
        image.unlockFocus()
        return image
    }
    #else
    @MainActor func image(size imageSize: CGSize, attributes: [NSAttributedString.Key : Any]?) -> UIImage? {
        guard let imageString: NSAttributedString = attributedString(size: 1, attributes: attributes) else { return nil }
        let rect = imageString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 1), options: .usesLineFragmentOrigin, context: nil)
        let widthScale = imageSize.width / rect.width
        let heightScale = imageSize.height / rect.height
        let scale = (widthScale < heightScale) ? widthScale : heightScale
        let scaledWidth = rect.width * scale
        let scaledHeight = rect.height * scale
        var anchorPoint = CGPoint.zero
        if widthScale < heightScale {
            anchorPoint.y = (imageSize.height - scaledHeight) / 2
        } else if widthScale > heightScale {
            anchorPoint.x = (imageSize.width - scaledWidth) / 2
        }
        var anchorRect = CGRect.zero
        anchorRect.origin = anchorPoint
        anchorRect.size.width = scaledWidth
        anchorRect.size.height = scaledHeight
        guard let imageStringScale: NSAttributedString = attributedString(size: scale, attributes: attributes) else { return nil }
        #if os(watchOS)
        let screenScale: CGFloat = WKInterfaceDevice.current().screenScale
        #elseif os(visionOS)
        let screenScale: CGFloat = UITraitCollection.current.displayScale
        #else
        let screenScale: CGFloat = UIScreen.main.scale
        #endif
        UIGraphicsBeginImageContextWithOptions(imageSize, false, screenScale)
        imageStringScale.draw(in: anchorRect)
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    #endif

    #if os(macOS)
    func image(size imageSize: CGSize, foregroundColor: NSColor? = nil, backgroundColor: NSColor? = nil) -> NSImage? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return image(size: imageSize, attributes: attributesCombine)
    }
    #else
    @MainActor func image(size imageSize: CGSize, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> UIImage? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return image(size: imageSize, attributes: attributesCombine)
    }
    #endif
}
