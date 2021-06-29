//
//  EFIconFontDevicons.swift
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
#if canImport(Core)
import Core
#endif

public extension EFIconFont {

    static let devicons = EFIconFontDevicons.self
}

extension EFIconFontDevicons: EFIconFontCaseIterableProtocol {

    public static var name: String {
        return "devicons"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontDevicons: String {
    case materializecss = "\u{ed78}"
    case redis = "\u{ed77}"
    case jenkins = "\u{ed76}"
    case yeoman = "\u{ed75}"
    case linux = "\u{ed74}"
    case gnu = "\u{ed73}"
    case react = "\u{ed72}"
    case krakenjs_badge = "\u{ed71}"
    case stylus = "\u{ed70}"
    case komodo = "\u{ed6f}"
    case msql_server = "\u{ed6e}"
    case symfony = "\u{ed6d}"
    case yahoo_small = "\u{ed6c}"
    case uikit = "\u{ed6b}"
    case redhat = "\u{ed6a}"
    case sass = "\u{ed69}"
    case windows = "\u{ed68}"
    case unity_small = "\u{ed67}"
    case terminal_badge = "\u{ed66}"
    case rust = "\u{ed65}"
    case mailchimp = "\u{ed64}"
    case stackoverflow = "\u{ed63}"
    case opera = "\u{ed62}"
    case scala = "\u{ed61}"
    case vim = "\u{ed60}"
    case krakenjs = "\u{ed5f}"
    case w3c = "\u{ed5e}"
    case spark = "\u{ed5d}"
    case docker = "\u{ed5c}"
    case webplatform = "\u{ed5b}"
    case senchatouch = "\u{ed5a}"
    case typo3 = "\u{ed59}"
    case yii = "\u{ed58}"
    case wordpress = "\u{ed57}"
    case rasberry_pi = "\u{ed56}"
    case visualstudio = "\u{ed55}"
    case yahoo = "\u{ed54}"
    case zend = "\u{ed53}"
    case jquery_logo = "\u{ed52}"
    case trello = "\u{ed51}"
    case ubuntu = "\u{ed50}"
    case responsive = "\u{ed4f}"
    case scriptcs = "\u{ed4e}"
    case safari = "\u{ed4d}"
    case nginx = "\u{ed4c}"
    case ruby = "\u{ed4b}"
    case travis = "\u{ed4a}"
    case netmagazine = "\u{ed49}"
    case go = "\u{ed48}"
    case swift = "\u{ed47}"
    case mozilla = "\u{ed46}"
    case groovy = "\u{ed45}"
    case phonegap = "\u{ed44}"
    case terminal = "\u{ed43}"
    case symfony_badge = "\u{ed42}"
    case snap_svg = "\u{ed41}"
    case sublime = "\u{ed40}"
    case postgresql = "\u{ed3f}"
    case sizzlejs = "\u{ed3e}"
    case prolog = "\u{ed3d}"
    case techcrunch = "\u{ed3c}"
    case less = "\u{ed3b}"
    case grunt = "\u{ed3a}"
    case scrum = "\u{ed39}"
    case streamline = "\u{ed38}"
    case requirejs = "\u{ed37}"
    case sqllite = "\u{ed36}"
    case photoshop = "\u{ed35}"
    case smashing_magazine = "\u{ed34}"
    case ruby_rough = "\u{ed33}"
    case python = "\u{ed32}"
    case raphael = "\u{ed31}"
    case ghost = "\u{ed30}"
    case nodejs = "\u{ed2f}"
    case mootools = "\u{ed2e}"
    case grails = "\u{ed2d}"
    case ror = "\u{ed2c}"
    case jekyll_small = "\u{ed2b}"
    case googleCloudPlatform = "\u{ed2a}"
    case gulp = "\u{ed29}"
    case rackspace = "\u{ed28}"
    case php = "\u{ed27}"
    case npm = "\u{ed26}"
    case opensource = "\u{ed25}"
    case github_full = "\u{ed24}"
    case openshift = "\u{ed23}"
    case nancy = "\u{ed22}"
    case dotnet = "\u{ed21}"
    case firefox = "\u{ed20}"
    case firebase = "\u{ed1f}"
    case perl = "\u{ed1e}"
    case meteor = "\u{ed1d}"
    case meteorfull = "\u{ed1c}"
    case nodejs_small = "\u{ed1b}"
    case laravel = "\u{ed1a}"
    case netbeans = "\u{ed19}"
    case onedrive = "\u{ed18}"
    case mongodb = "\u{ed17}"
    case mootools_badge = "\u{ed16}"
    case mysql = "\u{ed15}"
    case mitlicence = "\u{ed14}"
    case intellij = "\u{ed13}"
    case modernizr = "\u{ed12}"
    case markdown = "\u{ed11}"
    case html5_3d_effects = "\u{ed10}"
    case jquery_ui_logo = "\u{ed0f}"
    case magento = "\u{ed0e}"
    case javascript = "\u{ed0d}"
    case java = "\u{ed0c}"
    case github_badge = "\u{ed0b}"
    case js_badge = "\u{ed0a}"
    case jira = "\u{ed09}"
    case ionic = "\u{ed08}"
    case ie = "\u{ed07}"
    case joomla = "\u{ed06}"
    case git_pull_request = "\u{ed05}"
    case javascript_1 = "\u{ed04}"
    case illustrator = "\u{ed03}"
    case html5_multimedia = "\u{ed02}"
    case dreamweaver = "\u{ed01}"
    case hackernews = "\u{ed00}"
    case heroku = "\u{ecff}"
    case html5_connectivity = "\u{ecfe}"
    case html5 = "\u{ecfd}"
    case haskell = "\u{ecfc}"
    case git = "\u{ecfb}"
    case html5_device_access = "\u{ecfa}"
    case google_drive = "\u{ecf9}"
    case github = "\u{ecf8}"
    case google_analytics = "\u{ecf7}"
    case git_merge = "\u{ecf6}"
    case github_alt = "\u{ecf5}"
    case django = "\u{ecf4}"
    case ember = "\u{ecf3}"
    case git_branch = "\u{ecf2}"
    case git_compare = "\u{ecf1}"
    case git_commit = "\u{ecf0}"
    case composer = "\u{ecef}"
    case envato = "\u{ecee}"
    case css3_full = "\u{eced}"
    case creativecommons = "\u{ecec}"
    case ghost_small = "\u{eceb}"
    case creativecommons_badge = "\u{ecea}"
    case eclipse = "\u{ece9}"
    case extjs = "\u{ece8}"
    case dojo = "\u{ece7}"
    case erlang = "\u{ece6}"
    case fsharp = "\u{ece5}"
    case doctrine = "\u{ece4}"
    case dlang = "\u{ece3}"
    case drupal = "\u{ece2}"
    case digitalOcean = "\u{ece1}"
    case dart = "\u{ece0}"
    case cloud9 = "\u{ecdf}"
    case dropbox = "\u{ecde}"
    case debian = "\u{ecdd}"
    case codepen = "\u{ecdc}"
    case codrops = "\u{ecdb}"
    case clojure_alt = "\u{ecda}"
    case cssdeck = "\u{ecd9}"
    case database = "\u{ecd8}"
    case brackets = "\u{ecd7}"
    case bugsense = "\u{ecd6}"
    case css_tricks = "\u{ecd5}"
    case css3 = "\u{ecd4}"
    case code = "\u{ecd3}"
    case celluloid = "\u{ecd2}"
    case clojure = "\u{ecd1}"
    case coffeescript = "\u{ecd0}"
    case compass = "\u{eccf}"
    case atom = "\u{ecce}"
    case bintray = "\u{eccd}"
    case codeigniter = "\u{eccc}"
    case cisco = "\u{eccb}"
    case code_badge = "\u{ecca}"
    case bitbucket = "\u{ecc9}"
    case bower = "\u{ecc8}"
    case coda = "\u{ecc7}"
    case chrome = "\u{ecc6}"
    case blackberry = "\u{ecc5}"
    case bootstrap = "\u{ecc4}"
    case bing_small = "\u{ecc3}"
    case aptana = "\u{ecc2}"
    case aws = "\u{ecc1}"
    case asterisk = "\u{ecc0}"
    case backbone = "\u{ecbf}"
    case atlassian = "\u{ecbe}"
    case appstore = "\u{ecbd}"
    case apple = "\u{ecbc}"
    case android = "\u{ecbb}"
    case appcelerator = "\u{ecba}"
    case angular_simple = "\u{ecb9}"
}
