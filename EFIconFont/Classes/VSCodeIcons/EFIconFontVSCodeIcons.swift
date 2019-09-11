//
//  EFIconFontVSCodeIcons.swift
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

    static let vsCodeIcons = EFIconFontVSCodeIcons.self
}

extension EFIconFontVSCodeIcons: EFIconFontCaseIterableProtocol {

    public static var name: String {
        return "vscodeicons"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontVSCodeIcons: String {
    case unlock = "\u{edf6}"
    case zoomOut = "\u{edf5}"
    case warning = "\u{edf4}"
    case window = "\u{edf3}"
    case sourceControl = "\u{edf2}"
    case structure = "\u{edf1}"
    case searchStop = "\u{edf0}"
    case wordWrap = "\u{edef}"
    case search = "\u{edee}"
    case starEmpty = "\u{eded}"
    case stepOver = "\u{edec}"
    case saveAs = "\u{edeb}"
    case variable = "\u{edea}"
    case replace = "\u{ede9}"
    case zoomIn = "\u{ede8}"
    case start = "\u{ede7}"
    case vmRunning = "\u{ede6}"
    case wholeWord = "\u{ede5}"
    case move = "\u{ede4}"
    case recordKeys = "\u{ede3}"
    case replaceAll = "\u{ede2}"
    case stop = "\u{ede1}"
    case settings = "\u{ede0}"
    case stepInto = "\u{eddf}"
    case string = "\u{edde}"
    case whitespace = "\u{eddd}"
    case vmActive = "\u{eddc}"
    case sortPrecedence = "\u{eddb}"
    case vm = "\u{edda}"
    case vmStopped = "\u{edd9}"
    case twitter = "\u{edd8}"
    case error = "\u{edd7}"
    case trash = "\u{edd6}"
    case splitHorizontal = "\u{edd5}"
    case snippet = "\u{edd4}"
    case starFull = "\u{edd3}"
    case stepOut = "\u{edd2}"
    case rootFolder = "\u{edd1}"
    case method = "\u{edd0}"
    case saveAll = "\u{edcf}"
    case splitVertical = "\u{edce}"
    case starHalf = "\u{edcd}"
    case debug = "\u{edcc}"
    case compareChanges = "\u{edcb}"
    case regex = "\u{edca}"
    case references = "\u{edc9}"
    case selection = "\u{edc8}"
    case parameter = "\u{edc7}"
    case rootFolderOpened = "\u{edc6}"
    case save = "\u{edc5}"
    case property = "\u{edc4}"
    case ruler = "\u{edc3}"
    case preserveCase = "\u{edc2}"
    case numeric = "\u{edc1}"
    case restart = "\u{edc0}"
    case preview = "\u{edbf}"
    case openPreview = "\u{edbe}"
    case refresh = "\u{edbd}"
    case remove = "\u{edbc}"
    case reactions = "\u{edbb}"
    case newFile = "\u{edba}"
    case interface = "\u{edb9}"
    case lock = "\u{edb8}"
    case lightbulbAutofix = "\u{edb7}"
    case more = "\u{edb6}"
    case namespace = "\u{edb5}"
    case pause = "\u{edb4}"
    case goToFile = "\u{edb3}"
    case `operator` = "\u{edb2}"
    case newFolder = "\u{edb1}"
    case lightbulb = "\u{edb0}"
    case key = "\u{edaf}"
    case play = "\u{edae}"
    case json = "\u{edad}"
    case loading = "\u{edac}"
    case gear = "\u{edab}"
    case misc = "\u{edaa}"
    case multipleWindows = "\u{eda9}"
    case exclude = "\u{eda8}"
    case keyword = "\u{eda7}"
    case emptyWindow = "\u{eda6}"
    case event = "\u{eda5}"
    case gripper = "\u{eda4}"
    case info = "\u{eda3}"
    case file = "\u{eda2}"
    case issues = "\u{eda1}"
    case discard = "\u{eda0}"
    case filter = "\u{ed9f}"
    case folderActive = "\u{ed9e}"
    case field = "\u{ed9d}"
    case files = "\u{ed9c}"
    case circleOutline = "\u{ed9b}"
    case folderOpened = "\u{ed9a}"
    case enumeratorMember = "\u{ed99}"
    case folder = "\u{ed98}"
    case disconnect = "\u{ed97}"
    case extensions = "\u{ed96}"
    case console = "\u{ed95}"
    case enumerator = "\u{ed94}"
    case edit = "\u{ed93}"
    case ellipsis = "\u{ed92}"
    case collapseAll = "\u{ed91}"
    case caseSensitive = "\u{ed90}"
    case editorLayout = "\u{ed8f}"
    case currentAndBreakpoint = "\u{ed8e}"
    case current = "\u{ed8d}"
    case color = "\u{ed8c}"
    case constant = "\u{ed8b}"
    case chevronDown = "\u{ed8a}"
    case close = "\u{ed89}"
    case `continue` = "\u{ed88}"
    case comment = "\u{ed87}"
    case clearAll = "\u{ed86}"
    case chevronRight = "\u{ed85}"
    case check = "\u{ed84}"
    case closeAll = "\u{ed83}"
    case breakpointLog = "\u{ed82}"
    case `class` = "\u{ed81}"
    case chevronUp = "\u{ed80}"
    case breakpointLogUnverified = "\u{ed7f}"
    case circleFilled = "\u{ed7e}"
    case boolean = "\u{ed7d}"
    case breakpointConditional = "\u{ed7c}"
    case breakpointConditionalUnverified = "\u{ed7b}"
    case arrowRight = "\u{ed7a}"
    case chevronLeft = "\u{ed79}"
    case book = "\u{ed78}"
    case arrowDown = "\u{ed77}"
    case arrowUp = "\u{ed76}"
    case add = "\u{ed75}"
    case arrowLeft = "\u{ed74}"
    case array = "\u{ed73}"
    case activateBreakpoints = "\u{ed72}"
}
