//
//  EFIconFontEVAIcon.swift
//  EFIconFont
//
//  Created by EyreFree on 2021/6/25.
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
#if canImport(Core)
import Core
#endif

public extension EFIconFont {

    static let evaIcon = EFIconFontEVAIcon.self
}

extension EFIconFontEVAIcon: EFIconFontCaseIterableProtocol {

    public static var name: String {
        return "eva-icon"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontEVAIcon: String {
    case nerv = "\u{e90f}"
    case eva00 = "\u{e911}"
    case eva01 = "\u{e910}"
    case eva02 = "\u{e912}"
    case adam = "\u{e913}"
    case lilith = "\u{e914}"
    case sachiel = "\u{e90e}"
    case shamshel = "\u{e90d}"
    case ramiel = "\u{e90c}"
    case gaghiel = "\u{e902}"
    case israfel = "\u{e90b}"
    case sandalphon = "\u{e90a}"
    case matriel = "\u{e909}"
    case sahaquiel = "\u{e901}"
    case ireul = "\u{e908}"
    case leliel = "\u{e907}"
    case bardiel = "\u{e906}"
    case zeruel = "\u{e900}"
    case arael = "\u{e905}"
    case almisael = "\u{e904}"
    case tabris = "\u{e903}"
}
