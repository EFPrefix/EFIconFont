//
//  EFIconFontCaseIterableProtocol.swift
//  EFIconFont
//
//  Created by EyreFree on 2019/3/24.
//

import Foundation
#if os(macOS)
import AppKit
#else
import UIKit
#endif

fileprivate struct Anchor {
    nonisolated(unsafe) static let dictionaryDictionaries = NSCache<NSString, NSDictionary>()
    nonisolated(unsafe) static let attributesDictionaries = NSCache<NSString, NSDictionary>()
}

public protocol EFIconFontCaseIterableProtocol: EFIconFontProtocol, CaseIterable {

    // `dictionary` is all icons in [String : EFIconFontProtocol]
    static var dictionary: [String : EFIconFontProtocol] { get }

    // `icon` is used to find icon by name
    func icon(named name: String) -> EFIconFontProtocol?

    // `name` is not necessarily equal to .ttf file name
    static var name: String { get }

    // `path` is path of .ttf file
    static var path: String { get }

    // `attributes` is style of all icons
    static var attributes: [NSAttributedString.Key : Any] { set get }

    // `foregroundColor` is foregroundColor of all icons
    #if os(macOS)
    static var foregroundColor: NSColor? { set get }
    #else
    static var foregroundColor: UIColor? { set get }
    #endif

    // `backgroundColor` is backgroundColor of all icons
    #if os(macOS)
    static var backgroundColor: NSColor? { set get }
    #else
    static var backgroundColor: UIColor? { set get }
    #endif
    
    // `font` is UIFont of all icons with input font size
    #if os(macOS)
    static func font(size fontSize: CGFloat) -> NSFont?
    #else
    static func font(size fontSize: CGFloat) -> UIFont?
    #endif
}

public extension EFIconFontCaseIterableProtocol {

    static var dictionary: [String : EFIconFontProtocol] {
        get {
            let key: NSString = String(describing: Self.self) as NSString
            if let attributes = Anchor.dictionaryDictionaries.object(forKey: key) as? [String: EFIconFontProtocol] {
                return attributes
            }
            let newAttributes: [String : EFIconFontProtocol] = generateDictionary()
            Anchor.dictionaryDictionaries.setObject(newAttributes as NSDictionary, forKey: key)
            return newAttributes
        }
    }

    private static func generateDictionary() -> [String : EFIconFontProtocol] {
        var dictionary: [String : EFIconFontProtocol] = [String : EFIconFontProtocol]()
        for item in Self.allCases {
            dictionary.updateValue(item, forKey: "\(item)")
        }
        return dictionary
    }

    func icon(named name: String) -> EFIconFontProtocol? {
        return Self.dictionary[name]
    }

    static var path: String {
        return Bundle(for: EFIconFont.self).path(forResource: Self.name, ofType: "ttf") ?? Bundle.main.path(forResource: Self.name, ofType: "ttf") ?? ""
    }

    static var attributes: [NSAttributedString.Key : Any] {
        get {
            let key: NSString = String(describing: Self.self) as NSString
            return Anchor.attributesDictionaries.object(forKey: key) as? [NSAttributedString.Key: Any] ?? [:]
        }
        set {
            let key: NSString = String(describing: Self.self) as NSString
            Anchor.attributesDictionaries.setObject(newValue as NSDictionary, forKey: key)
        }
    }

    #if os(macOS)
    static var foregroundColor: NSColor? {
        get {
            return Self.attributes[NSAttributedString.Key.foregroundColor] as? NSColor
        }
        set {
            if let newValue = newValue {
                Self.attributes.updateValue(newValue, forKey: NSAttributedString.Key.foregroundColor)
            } else {
                Self.attributes.removeValue(forKey: NSAttributedString.Key.foregroundColor)
            }
        }
    }
    #else
    static var foregroundColor: UIColor? {
        get {
            return Self.attributes[NSAttributedString.Key.foregroundColor] as? UIColor
        }
        set {
            if let newValue = newValue {
                Self.attributes.updateValue(newValue, forKey: NSAttributedString.Key.foregroundColor)
            } else {
                Self.attributes.removeValue(forKey: NSAttributedString.Key.foregroundColor)
            }
        }
    }
    #endif

    #if os(macOS)
    static var backgroundColor: NSColor? {
        get {
            return Self.attributes[NSAttributedString.Key.backgroundColor] as? NSColor
        }
        set {
            if let newValue = newValue {
                Self.attributes.updateValue(newValue, forKey: NSAttributedString.Key.backgroundColor)
            } else {
                Self.attributes.removeValue(forKey: NSAttributedString.Key.backgroundColor)
            }
        }
    }
    #else
    static var backgroundColor: UIColor? {
        get {
            return Self.attributes[NSAttributedString.Key.backgroundColor] as? UIColor
        }
        set {
            if let newValue = newValue {
                Self.attributes.updateValue(newValue, forKey: NSAttributedString.Key.backgroundColor)
            } else {
                Self.attributes.removeValue(forKey: NSAttributedString.Key.backgroundColor)
            }
        }
    }
    #endif

    // MARK:- Font
    #if os(macOS)
    static func font(size fontSize: CGFloat) -> NSFont? {
        if !NSFont.loadFontIfNeeded(name: Self.name, path: Self.path) { return nil }
        return NSFont(name: Self.name, size: fontSize)
    }
    #else
    static func font(size fontSize: CGFloat) -> UIFont? {
        if !UIFont.loadFontIfNeeded(name: Self.name, path: Self.path) { return nil }
        return UIFont(name: Self.name, size: fontSize)
    }
    #endif
    
    // MARK:- EFIconFontProtocol
    var name: String {
        get {
            return Self.name
        }
    }

    var path: String {
        get {
            return Self.path
        }
    }

    var attributes: [NSAttributedString.Key : Any] {
        get {
            return Self.attributes
        }
        set {
            Self.attributes = newValue
        }
    }

    #if os(macOS)
    var foregroundColor: NSColor? {
        return Self.foregroundColor
    }
    #else
    var foregroundColor: UIColor? {
        return Self.foregroundColor
    }
    #endif
    
    #if os(macOS)
    var backgroundColor: NSColor? {
        return Self.backgroundColor
    }
    #else
    var backgroundColor: UIColor? {
        return Self.backgroundColor
    }
    #endif
    
    #if os(macOS)
    func font(size fontSize: CGFloat) -> NSFont? {
        return Self.font(size: fontSize)
    }
    #else
    func font(size fontSize: CGFloat) -> UIFont? {
        return Self.font(size: fontSize)
    }
    #endif
}
