![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/EFIconFont.png?raw=true)

<p align="center">
    <a href="https://travis-ci.org/EFPrefix/EFIconFont">
    	<img src="https://api.travis-ci.org/EFPrefix/EFIconFont.svg?branch=master">
    </a>
    <a href="https://swiftpackageindex.com/EFPrefix/EFIconFont">
        <img src="https://img.shields.io/badge/SPM-ready-orange.svg">
    </a>
<a href="https://app.fossa.com/projects/git%2Bgithub.com%2FEFPrefix%2FEFIconFont?ref=badge_shield" alt="FOSSA Status"><img src="https://app.fossa.com/api/projects/git%2Bgithub.com%2FEFPrefix%2FEFIconFont.svg?type=shield"/></a>
    <a href="https://cocoapods.org/pods/EFIconFont">
    	<img src="https://img.shields.io/cocoapods/v/EFIconFont.svg?style=flat">
    </a>
    <a href="https://cocoapods.org/pods/EFIconFont">
        <img src="https://img.shields.io/cocoapods/p/EFIconFont.svg?style=flat">
    </a>
    <a href="https://github.com/apple/swift">
    	<img src="https://img.shields.io/badge/language-swift-orange.svg">
    </a>
    <a href="https://codebeat.co/projects/github-com-efprefix-eficonfont-master">
        <img src="https://codebeat.co/badges/4cbadc4d-e8f9-4f5b-8ee5-676ba6380383" />
    </a>
    <a href="https://raw.githubusercontent.com/EFPrefix/EFIconFont/master/LICENSE">
        <img src="https://img.shields.io/cocoapods/l/EFIconFont.svg?style=flat">
    </a>
    <a href="https://app.fossa.com/projects/git%2Bgithub.com%2FEFPrefix%2FEFIconFont?ref=badge_shield">
        <img src="https://app.fossa.com/api/projects/git%2Bgithub.com%2FEFPrefix%2FEFIconFont.svg?type=shield">
    </a>
    <img src="https://img.shields.io/badge/made%20with-%3C3-orange.svg">
</p>

An ordinary iconfont cocoapods package helps you to use iconfont more easily in your project, in Swift.

> [中文介绍](https://github.com/EFPrefix/EFIconFont/blob/master/README_CN.md)


[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FEFPrefix%2FEFIconFont.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2FEFPrefix%2FEFIconFont?ref=badge_large)

## Preview

| 1 | 2 | 3 | 4 |
|:-:|:-:|:-:|:-:|
| ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/1.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/2.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/3.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/4.png?raw=true) |

## Example

### TestFlight

You can click the `TestFlight` button below to download demo with TestFlight:

<a target='_blank' href='https://testflight.apple.com/join/mlmn8ipW'>
    <img src='https://testflight.apple.com/images/testflight-128x128_2x_27.png' width='128' height='128'/>
</a>

### Compile Demo Manually

To run the example project manually, clone the repo, and run `sh Startup.sh` in project folder. Demo is in the `Example` folder, open `Example.xcworkspace` with Xcode and select the target you want in it, run.

Or you can run the following command in terminal:

```bash
git clone git@github.com:EFPrefix/EFIconFont.git; cd EFIconFont; sh Startup.sh; open Example/Example.xcworkspace;
```

## Requirements

| Version | Needs                                 |
|:--------|:--------------------------------------|
| <0.5    | Xcode 10.0+<br>Swift 4.2+<br>iOS 8.0+ |
| >=0.5   | Xcode 10.2+<br>Swift 5.0+<br>iOS 8.0+ |

## Installation

### CocoaPods

EFIconFont is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'EFIconFont'
```

You can get built-in iconfonts with `subspecs`, for example you will get icons of `AntDesign` and `FontAwesome` by the following way:

```ruby
pod 'EFIconFont', :subspecs => ['AntDesign', 'FontAwesome']
```

You can also choose to get all built-in packs by using `Complete` subspec:

```ruby
pod 'EFIconFont', :subspecs => ['Complete']
```

Then, run the following command:

```bash
pod install
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the Swift compiler.

Once you have your Swift package set up, adding EFIconFont as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/EFPrefix/EFIconFont.git", .upToNextMinor(from: "1.2.0"))
]
```

## Use

### 1. Core

Objects that implement the `EFIconFontProtocol` protocol can transform themselves into `NSAttributedString` or `UIImage`, which is as follows:

```swift
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
    func font(size fontSize: CGFloat) -> UIFont?
}
```

- name: Font name, not necessarily equal to .ttf file name, you can use [BirdFont](https://birdfont.org) to see the `Name` attribute of the file;
- path: Filepath of `.ttf` file, usually you can get it through code like `Bundle.main.path(forResource: name, ofType: "ttf")`(If filename is same as name, you can use the default implementation and do not need to implement this property);
- attributes: Attributes of icon(You can use the default implementation and do not need to implement this property);
- unicode: The unique unicode of an icon;
- font: The `UIFont` of an icon with input font size.

Objects that implement the protocol can be converted to strings and images by calling the following methods, you can also change the foreground color and size:

```swift
// MARK:- String
func attributedString(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> NSAttributedString?
func attributedString(size fontSize: CGFloat, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> NSAttributedString?

// MARK:- Image
func image(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> UIImage?
func image(size fontSize: CGFloat, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> UIImage?
func image(size imageSize: CGSize, attributes: [NSAttributedString.Key : Any]?) -> UIImage?
func image(size imageSize: CGSize, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> UIImage?
```

### 2. Built-in iconfont packs

This pod has integrated some free resources in the subspecs, like `AntDesign` and `FontAwesome`. It can be imported by who need to use it. The usage methods are as follows, you can get a return value of `EFIconFontProtocol`:

```swift
EFIconFontAntDesign.addteam
```

You can use the object which follow `EFIconFontProtocol` to get `NSAttributedString` and `UIImage`:

```swift
EFIconFontAntDesign.addteam.attributedString(size: 24)
EFIconFontFontAwesomeBrands.adobe.attributedString(size: 32, foregroundColor: UIColor.white, backgroundColor: UIColor.green)
EFIconFontFontAwesomeRegular.addressBook.image(size: 24, foregroundColor: UIColor.red)
EFIconFontFontAwesomeSolid.alignLeft.image(size: CGSize(width: 36, height: 48), foregroundColor: UIColor.white)
```

You can also get all icons of a `EFIconFontCaseIterableProtocol` object with type `[String : EFIconFontProtocol]` by the following code:

```swift
EFIconFont.antDesign.dictionary
```

PS: Although the libraries below are all free, please make sure that your way of using the icon conforms to the original author's protocol specification:

| Name | Version | Count | File Size | Description | License | Preview |
|:-|:-|:-|:-|:-|:-|:-|
| AliCloudConsole | 1.0 | 266 | 42KB | AliCloudConsole | Unknown | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=11607) |
| AntChain | 1.0 | 77 | 17KB | AntChain | Unknown | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=26815) |
| AntDesign | 1.0 | 557 | 127KB | Ant Design | [MIT](https://github.com/ant-design/ant-design/blob/master/LICENSE) | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=9402) |
| Dashicons  | 0.9.0 | 203 | 51 KB | Official icon font of the WordPress admin | [GPLv2](https://github.com/WordPress/dashicons) | [wordpress.org](https://developer.wordpress.org/resource/dashicons) |
| Devicons | 1.8.0 | 192 | 92KB | An iconic font for developers | [MIT](https://github.com/vorillaz/devicons) | [vorillaz.github.io/devicons](http://vorillaz.github.io/devicons/#/cheat) |
| ElusiveIcons | 2.0.0 | 304 | 53KB | Elusive Icons | [OFL](http://elusiveicons.com/license/) | [elusiveicons.com](http://elusiveicons.com/icons/) |
| EVAIcon |  | 21 | 45 KB | EVA | [OFL](https://github.com/moeoverflow/EVA-icon) | [EVA-icon](https://moeoverflow.github.io/EVA-icon/) |
| EvilIcons | 1.10.1 | 70 | 16 KB | Simple and clean SVG icon pack | [MIT](https://github.com/evil-icons/evil-icons/blob/master/LICENSE.txt) | [evil-icons.io](https://evil-icons.io/) |    
| FontAwesom(Regular / Brands / Solid) | 5.8.1 | 1516 | 356KB | Font Awesome | [Font Awesome Free License](https://fontawesome.com/license/free) | [fontawesome.com](https://fontawesome.com/icons?d=gallery&m=free) |
| FoundationIcons | 3.0 | 283 | 68KB | Foundation Icon Fonts 3 | [-](https://github.com/zurb/foundation-icon-fonts) | [zurb.com/playground/foundation-icon-fonts-3](https://zurb.com/playground/foundation-icon-fonts-3) |
| Genericons | 4.0.4 | 103 | 16KB | Genericons Neue are generic looking icons, suitable for a blog or simple website | [GPLv2](https://github.com/Automattic/genericons-neue/blob/master/COPYING.md) | [genericons.com](http://genericons.com/) |
| Hawcons | 1.0 | 1035 | 685KB | Hawcons, includes icons of Documents, Sports, Weather, Emoji, Gestures, Filetypes, etc. | [Free](http://hawcons.com/faq/) | [hawcons.com](http://hawcons.com/preview/) |
| IcoMoon | 1.0 | 490 | 94KB | IcoMoon free icons | [CC BY 4.0 / GPL](https://github.com/Keyamoon/IcoMoon-Free/blob/master/License.txt) | [ionicons.com](https://icomoon.io/#preview-free) |
| Ionicons | 4.5.5 | 696 | 143KB | Ionicons | [MIT](https://github.com/ionic-team/ionicons/blob/master/LICENSE) | [ionicons.com](https://ionicons.com/) |
| LigatureSymbols | 2.11 | 239 | 84KB | Ligature Symbols | [OFL](http://kudakurage.com/ligature_symbols/)| [kudakurage.com/ligature_symbols](http://kudakurage.com/ligature_symbols/) |
| MapIcons | 3.0.0 | 192 | 48 KB | A set of icons for use with maps | [OFL](https://github.com/scottdejonge/map-icons) | [map-icons.com](http://map-icons.com/) | 
| MaterialIcons | 3.0.1 | 1057 | 695KB | Google's material design icons, four styles | [Apache-2.0](https://github.com/google/material-design-icons/blob/master/LICENSE) | [material.io](https://material.io/tools/icons) |
| Meteocons |  | 47 | 15KB | A set of weather icons, it containing 40+ icons | [Free](https://www.alessioatzeni.com/meteocons/) | [alessioatzeni.com/meteocons](https://www.alessioatzeni.com/meteocons/) |
| MetrizeIcons | 1.0 | 300 | 74KB | Free Collection of 300 Metro-Style Icons for Designers and Developers | [Free](https://www.alessioatzeni.com/metrize-icons/) | [alessioatzeni.com/metrize-icons](https://www.alessioatzeni.com/metrize-icons/) |
| OpenIconic | 1.1.1 | 223 | 33KB | An open source icon set with 223 marks in SVG | [OFL](https://github.com/iconic/open-iconic/blob/master/FONT-LICENSE) | [useiconic.com/open](https://useiconic.com/open/) |
| StrawberryIcon | 2.0.0 | 382 | 69KB | A Free And Open Iconic Font Library for Developer and Creator | [OFL](https://github.com/xiangsudian/CaoMei) | [chuangzaoshi.com/icon](http://chuangzaoshi.com/icon/) |
| Stroke7 | 1.2.0 | 202 | 44KB | A series of iOS 7 inspired thin stroke icons | [Free](https://www.pixeden.com/icon-fonts/filled-7-icon-font-set) | [themes-pixeden.com/font-demos](http://themes-pixeden.com/font-demos/7-stroke/index.html) |
| TaoBao | 1.0 | 434 | 126KB | TaoBao | Unknown | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=33) |
| ThemifyIcons | 1.0 | 352 | 68KB | A complete set of icons for use in web design and apps | [Free](https://themify.me/themify-icons) | [themify.me](https://themify.me/themify-icons) |
| Tmall | 1.0 | 564 | 190KB | Tmall | Unknown | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=28) |
| Typicons | 2.0.9 | 336 | 82KB | 336 pixel perfect, all-purpose vector icons in a kit | [OFL](https://github.com/stephenhutchings/typicons.font/blob/master/README.md) | [s-ings.com/typicons](https://www.s-ings.com/typicons/) |
| VSCodeIcons | 1.0 | 133 | 24KB | Icons for Visual Studio Code | [MIT](https://github.com/microsoft/vscode-icons/blob/master/LICENSE-CODE) | [github.com/microsoft/vscode-icons](https://github.com/microsoft/vscode-icons) |
| WeatherIcons | 2.0.10 | 219 | 64KB | Weather, maritime, and meteorological based icons | [OFL](https://github.com/erikflowers/weather-icons) | [erikflowers.github.io/weather-icons](http://erikflowers.github.io/weather-icons/) |
| Zocial | 1.3.0 | 112 | 31KB | Popular social icons | [MIT](https://github.com/smcllns/css-social-buttons/blob/master/LICENSE) | [smcllns.github.io/css-social-buttons/](https://smcllns.github.io/css-social-buttons/) |

### 3. Extend custom packs

#### (1) Import Font File

Drag the `.ttf` file of the icon library into the Xcode project and ensure that the `Copy Bundle Resources` list in `Build Phases` contains this font file (It will be included by default, just check it).

In addition, the file will be loaded at runtime, do not need to add it to the `Fonts provided by application` item in the `Info.plist` file.

#### (2) Implement `EFIconFontCaseIterableProtocol` 

By making a implementation of [EFIconFontCaseIterableProtocol](https://github.com/EFPrefix/EFIconFont/blob/master/EFIconFont/Classes/Core/EFIconFontCaseIterableProtocol.swift) you can get your custom iconfont pack object, demo in this project demonstrates customization with GitHub's Octicons as an [example](https://github.com/EFPrefix/EFIconFont/blob/master/Example/EFIconFont-iOS/Octicons/EFIconFontOcticons.swift):

```swift
import EFIconFont

public extension EFIconFont {
    public static let octicons = EFIconFontOcticons.self
}

extension EFIconFontOcticons: EFIconFontCaseIterableProtocol {
    public static var name: String {
        return "octicons"
    }
    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontOcticons: String {
    case thumbsup = "\u{e6d7}"
    case unverified = "\u{e6d6}"
    case unfold = "\u{e6d5}"
    case verified = "\u{e6d4}"
    // ...
}
```

#### (3) Call

Same as `Built-in iconfont packs` above:

```swift
EFIconFontOcticons.thumbsup
```

#### (4) Attention

The `Octicons` icon library in this project is owned by GitHub. This is only a demonstration, do not use it in any situation that violates the specifications set by its owner:

| Name | Version | Count | File Size | Description | License | Preview |
|:-|:-|:-|:-|:-|:-|:-|
| Octicons | 8.4.2 | 184 | 34KB | GitHub‘s icons | [GitHub Logos and Usage](https://github.com/logos) | [octicons.github.com](https://octicons.github.com/) |

### 4. Other

Usage of some iconfont resource sites:

- [iconfont.cn](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/iconfont.md)
- [fontawesome.com](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/fontawesome.md)
- [material.io/icons/](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/materialicons.md)

## Author

EyreFree, eyrefree@eyrefree.org

## License

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/License_icon-mit-88x31-2.svg/128px-License_icon-mit-88x31-2.svg.png">

EFIconFont is available under the MIT license. See the [LICENSE](LICENSE) file for more info.