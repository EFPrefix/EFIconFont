//
//  EFIconFontElusiveIcons.swift
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

public extension EFIconFont {

    static let evilIcons = EFIconFontEvilIcons.self
}

extension EFIconFontEvilIcons: EFIconFontCaseIterableProtocol {

    public static var name: String {
        return "evilicons"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontEvilIcons: String {
    case eiUndo = "\u{ed39}"
    case eiUser = "\u{ed38}"
    case eiScTumblr = "\u{ed37}"
    case eiSpinner = "\u{ed36}"
    case eiSpinner2 = "\u{ed35}"
    case eiStar = "\u{ed34}"
    case eiTrophy = "\u{ed33}"
    case eiSpinner3 = "\u{ed32}"
    case eiScTelegram = "\u{ed31}"
    case eiTag = "\u{ed30}"
    case eiUnlock = "\u{ed2f}"
    case eiTrash = "\u{ed2e}"
    case eiScVk = "\u{ed2d}"
    case eiShareGoogle = "\u{ed2c}"
    case eiScInstagram = "\u{ed2b}"
    case eiScPinterest = "\u{ed2a}"
    case eiScLinkedin = "\u{ed29}"
    case eiScVimeo = "\u{ed28}"
    case eiScYoutube = "\u{ed27}"
    case eiShareApple = "\u{ed26}"
    case eiScOdnoklassniki = "\u{ed25}"
    case eiScTwitter = "\u{ed24}"
    case eiScSoundcloud = "\u{ed23}"
    case eiSearch = "\u{ed22}"
    case eiScSkype = "\u{ed21}"
    case eiScFacebook = "\u{ed20}"
    case eiPlus = "\u{ed1f}"
    case eiRefresh = "\u{ed1e}"
    case eiPointer = "\u{ed1d}"
    case eiRetweet = "\u{ed1c}"
    case eiScGithub = "\u{ed1b}"
    case eiQuestion = "\u{ed1a}"
    case eiRedo = "\u{ed19}"
    case eiScGooglePlus = "\u{ed18}"
    case eiLike = "\u{ed17}"
    case eiPencil = "\u{ed16}"
    case eiCreditCard = "\u{ed15}"
    case eiPaperclip = "\u{ed14}"
    case eiLock = "\u{ed13}"
    case eiGear = "\u{ed12}"
    case eiPlay = "\u{ed11}"
    case eiLink = "\u{ed10}"
    case eiComment = "\u{ed0f}"
    case eiHeart = "\u{ed0e}"
    case eiMinus = "\u{ed0d}"
    case eiLocation = "\u{ed0c}"
    case eiEnvelope = "\u{ed0b}"
    case eiNavicon = "\u{ed0a}"
    case eiClock = "\u{ed09}"
    case eiClose = "\u{ed08}"
    case eiImage = "\u{ed07}"
    case eiCloseO = "\u{ed06}"
    case eiArrowRight = "\u{ed05}"
    case eiExternalLink = "\u{ed04}"
    case eiEye = "\u{ed03}"
    case eiChart = "\u{ed02}"
    case eiCalendar = "\u{ed01}"
    case eiExclamation = "\u{ed00}"
    case eiCart = "\u{ecff}"
    case eiCamera = "\u{ecfe}"
    case eiChevronLeft = "\u{ecfd}"
    case eiChevronUp = "\u{ecfc}"
    case eiCheck = "\u{ecfb}"
    case eiChevronRight = "\u{ecfa}"
    case eiArchive = "\u{ecf9}"
    case eiArrowUp = "\u{ecf8}"
    case eiChevronDown = "\u{ecf7}"
    case eiBell = "\u{ecf6}"
    case eiArrowLeft = "\u{ecf5}"
    case eiArrowDown = "\u{ecf4}"
}
