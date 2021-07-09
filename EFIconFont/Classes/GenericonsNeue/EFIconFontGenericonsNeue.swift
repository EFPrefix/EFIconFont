//
//  EFIconFontGenericonsNeue.swift
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
#if canImport(EFIconFontCore)
import EFIconFontCore
#endif

public extension EFIconFont {

    static let genericonsNeue = EFIconFontGenericonsNeue.self
}

extension EFIconFontGenericonsNeue: EFIconFontCaseIterableProtocol {

    public static var name: String {
        return "genericonsneue"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontGenericonsNeue: String {
    case book = "\u{ed3c}"
    case subscribe = "\u{ed3b}"
    case plugin = "\u{ed3a}"
    case week = "\u{ed39}"
    case tag = "\u{ed38}"
    case status = "\u{ed37}"
    case videocamera = "\u{ed36}"
    case xpost = "\u{ed35}"
    case warning = "\u{ed34}"
    case unzoom = "\u{ed33}"
    case sendToTablet = "\u{ed32}"
    case rewind = "\u{ed31}"
    case zoom = "\u{ed30}"
    case shuffle = "\u{ed2f}"
    case website = "\u{ed2e}"
    case video = "\u{ed2d}"
    case user = "\u{ed2c}"
    case trash = "\u{ed2b}"
    case unapprove = "\u{ed2a}"
    case unsubscribe = "\u{ed29}"
    case summary = "\u{ed28}"
    case pinned = "\u{ed27}"
    case quote = "\u{ed26}"
    case hierarchy = "\u{ed25}"
    case time = "\u{ed24}"
    case info = "\u{ed23}"
    case subscribed = "\u{ed22}"
    case top = "\u{ed21}"
    case link = "\u{ed20}"
    case starHalf = "\u{ed1f}"
    case stop = "\u{ed1e}"
    case skipBack = "\u{ed1d}"
    case tablet = "\u{ed1c}"
    case sitemap = "\u{ed1b}"
    case standard = "\u{ed1a}"
    case starEmpty = "\u{ed19}"
    case spam = "\u{ed18}"
    case show = "\u{ed17}"
    case star = "\u{ed16}"
    case share = "\u{ed15}"
    case month = "\u{ed14}"
    case reply = "\u{ed13}"
    case phone = "\u{ed12}"
    case skipAhead = "\u{ed11}"
    case sendToPhone = "\u{ed10}"
    case search = "\u{ed0f}"
    case edit = "\u{ed0e}"
    case refresh = "\u{ed0d}"
    case mail = "\u{ed0c}"
    case previous = "\u{ed0b}"
    case minus = "\u{ed0a}"
    case heart = "\u{ed09}"
    case notice = "\u{ed08}"
    case flag = "\u{ed07}"
    case plus = "\u{ed06}"
    case pause = "\u{ed05}"
    case external = "\u{ed04}"
    case picture = "\u{ed03}"
    case category = "\u{ed02}"
    case play = "\u{ed01}"
    case print = "\u{ed00}"
    case next = "\u{ecff}"
    case paintbrush = "\u{ecfe}"
    case gallery = "\u{ecfd}"
    case menu = "\u{ecfc}"
    case microphone = "\u{ecfb}"
    case move = "\u{ecfa}"
    case collapse = "\u{ecf9}"
    case location = "\u{ecf8}"
    case lock = "\u{ecf7}"
    case help = "\u{ecf6}"
    case hide = "\u{ecf5}"
    case key = "\u{ecf4}"
    case italic = "\u{ecf3}"
    case home = "\u{ecf2}"
    case fullscreen = "\u{ecf1}"
    case day = "\u{ecf0}"
    case image = "\u{ecef}"
    case fastforward = "\u{ecee}"
    case cog = "\u{eced}"
    case cloudUpload = "\u{ecec}"
    case cloud = "\u{eceb}"
    case feed = "\u{ecea}"
    case download = "\u{ece9}"
    case code = "\u{ece8}"
    case ellipsis = "\u{ece7}"
    case expand = "\u{ece6}"
    case document = "\u{ece5}"
    case comment = "\u{ece4}"
    case cloudDownload = "\u{ece3}"
    case close = "\u{ece2}"
    case chat = "\u{ece1}"
    case attachment = "\u{ece0}"
    case closeAlt = "\u{ecdf}"
    case bug = "\u{ecde}"
    case audio = "\u{ecdd}"
    case checkmark = "\u{ecdc}"
    case cart = "\u{ecdb}"
    case audioMute = "\u{ecda}"
    case bold = "\u{ecd9}"
    case anchor = "\u{ecd8}"
    case aside = "\u{ecd7}"
    case activity = "\u{ecd6}"
}
