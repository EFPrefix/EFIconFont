![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/EFIconFont.png?raw=true)

<p align="center">
    <a href="https://swiftpackageindex.com/EFPrefix/EFIconFont">
        <img src="https://img.shields.io/badge/SPM-ready-orange.svg">
    </a>
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
</p>

一个用 Swift 实现的普通的 IconFont 封装，帮助你更便捷地在你的工程中使用 IconFont，同时集成了一系列可免费使用的第三方图标库。

> [English Introduction](https://github.com/EFPrefix/EFIconFont/blob/master/README.md)

## 预览

| 1 | 2 | 3 | 4 |
|:-:|:-:|:-:|:-:|
| ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/1.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/2.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/3.png?raw=true) | ![](https://github.com/EFPrefix/EFIconFont/blob/master/Assets/4.png?raw=true) |

## 示例

1. 利用 `git clone` 命令下载本仓库；
2. 利用 cd 命令切换到仓库目录下，执行 `sh Startup.sh` 命令；
3. 随后打开 `Example` 目录下的 `Example.xcworkspace` 编译即可。

或执行以下命令：

```bash
git clone git@github.com:EFPrefix/EFIconFont.git; cd EFIconFont; sh Startup.sh; open Example/Example.xcworkspace;
```

## 需求

- Xcode 16+
- Swift 6.0+

## 安装

### CocoaPods

EFIconFont 可以通过 [CocoaPods](https://cocoapods.org) 进行获取。只需要在你的 Podfile 中添加如下代码就能实现引入，默认只包含 `Core` 部分，不含字体包：

```ruby
pod 'EFIconFont'
```

可以通过 subspecs 方式引入本库已集成的图标库资源，如下示例引用了 AntDesign 和 FontAwesome 资源：

```ruby
pod 'EFIconFont', :subspecs => ['AntDesign', 'FontAwesome']
```

也可以通过 `Complete` 引入本库已集成的所有图标库资源，示例：

```ruby
pod 'EFIconFont', :subspecs => ['Complete']
```

然后，执行如下命令即可：

```bash
pod install
```

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) 是一个集成在 Swift 编译器中的用来进行 Swift 代码自动化发布的工具。

如果你已经建立了你的 Swift 包，将 EFIconFont 加入依赖是十分容易的，只需要将其添加到你的 `Package.swift` 文件的 `dependencies` 项中即可：

```swift
dependencies: [
    .package(url: "https://github.com/EFPrefix/EFIconFont.git", .upToNextMinor(from: "6.0.0.0"))
]
```

## 使用

### 1. 核心

实现 `EFIconFontProtocol` 协议的对象，能够将自身转换为 `NSAttributedString` 或 `UIImage`，该协议内容如下：

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

- name：字体名，与 .ttf 文件名并不一定相等，可通过 [BirdFont](https://birdfont.org) 等字体文件处理工具查看其 `Name` 属性取得；
- path：.ttf 文件路径，一般通过形如 `Bundle.main.path(forResource: name, ofType: "ttf")` 的方式获取（若文件名和 name 相同，则无须实现该属性，使用默认实现即可）；
- attributes: 某 icon 的样式（若无特殊需求，使用默认实现即可）；
- unicode：某符号的 unicode；
- font: 根据输入的 fontSize 对应的某图标的 `UIFont`。

实现该协议的对象，可通过调用下列方法进行转换输出为字符串和图片，可改变前景色和大小：

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

### 2. 自带图标库

本库已集成了 AntDesign、FontAwesome 等免费图标库资源，需要使用的同学引入即可，如下所示，会得到一个 `EFIconFontProtocol` 类型的返回值：

```swift
EFIconFontAntDesign.addteam
```

可通过遵循 `EFIconFontProtocol` 协议的对象获取 `NSAttributedString` 和 `UIImage`：

```swift
EFIconFontAntDesign.addteam.attributedString(size: 24)
EFIconFontFontAwesomeBrands.adobe.attributedString(size: 32, foregroundColor: UIColor.white, backgroundColor: UIColor.green)
EFIconFontFontAwesomeRegular.addressBook.image(size: 24, foregroundColor: UIColor.red)
EFIconFontFontAwesomeSolid.alignLeft.image(size: CGSize(width: 36, height: 48), foregroundColor: UIColor.white)
```

可通过如下方式获取某个图标库的全部项目，他会返回 `[String : EFIconFontProtocol]` 类型的 Dictionary：

```swift
EFIconFont.antDesign.dictionary
```

备注：虽为免费图标库，但还请自行确保您的使用方式遵循字库原始作者的使用协议规范：

| 名称 | 版本 | 数量 | 文件大小 | 描述 | 使用规范 | 预览 |
|:-|:-|:-|:-|:-|:-|:-|
| AliCloudConsole | 1.0 | 266 | 42KB | 阿里云控制台官方图标库 | Unknown | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=11607) |
| AntChain | 1.0 | 77 | 17KB | AntChain 蚂蚁链官方图标库 | 未知 | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=26815) |
| AntDesign | | 557 | 127KB | AntDesign 所属图标库 | [MIT](https://github.com/ant-design/ant-design/blob/master/LICENSE) | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=9402) |
| Dashicons  | 0.9.0 | 203 | 51 KB | WordPress admin 官方图标库 | [GPLv2](https://github.com/WordPress/dashicons) | [wordpress.org](https://developer.wordpress.org/resource/dashicons) |
| Devicons | 1.8.0 | 192 | 92KB | 各种开发工具、编程语言的图标 | [MIT](https://github.com/vorillaz/devicons) | [vorillaz.github.io/devicons](http://vorillaz.github.io/devicons/#/cheat) |
| ElusiveIcons | 2.0.0 | 304 | 53KB | Elusive Icons | [OFL](http://elusiveicons.com/license/) | [elusiveicons.com](http://elusiveicons.com/icons/) |
| EVAIcon |  | 21 | 45 KB | EVA | [OFL](https://github.com/moeoverflow/EVA-icon) | [EVA-icon](https://moeoverflow.github.io/EVA-icon/) |
| EvilIcons | 1.10.1 | 70 | 16 KB | 简洁的图标库 | [MIT](https://github.com/evil-icons/evil-icons/blob/master/LICENSE.txt) | [evil-icons.io](https://evil-icons.io/) |    
| FontAwesome（Regular / Brands / Solid） | 5.8.1 | 1516 | 356KB | FontAwesome 所属的免费图标库 | [Font Awesome Free License](https://fontawesome.com/license/free) | [fontawesome.com](https://fontawesome.com/icons?d=gallery&m=free) |
| FoundationIcons | 3.0 | 283 | 68KB | Foundation Icon Fonts 3 | [-](https://github.com/zurb/foundation-icon-fonts) | [zurb.com/playground/foundation-icon-fonts-3](https://zurb.com/playground/foundation-icon-fonts-3) |
| Genericons | 4.0.4 | 103 | 16KB | 通用外观图标库，适用于博客 / 简单网站 | [GPLv2](https://github.com/Automattic/genericons-neue/blob/master/COPYING.md) | [genericons.com](http://genericons.com/) |
| Hawcons | 1.0 | 1035 | 685KB | Hawcons 免费图标库，包括文档、体育、天气、表情、手势、文件类型等 | [Free](http://hawcons.com/faq/) | [hawcons.com](http://hawcons.com/preview/) |
| IcoMoon | 1.0 | 490 | 94KB | IcoMoon 免费图标库 | [CC BY 4.0 / GPL](https://github.com/Keyamoon/IcoMoon-Free/blob/master/License.txt) | [ionicons.com](https://icomoon.io/#preview-free) |
| Ionicons | 4.5.5 | 696 | 143KB | Ionicons 免费图标库 | [MIT](https://github.com/ionic-team/ionicons/blob/master/LICENSE) | [ionicons.com](https://ionicons.com/) |
| LigatureSymbols | 2.11 | 239 | 84KB | Ligature Symbols | [OFL](http://kudakurage.com/ligature_symbols/)| [kudakurage.com/ligature_symbols](http://kudakurage.com/ligature_symbols/) |
| MapIcons | 3.0.0 | 192 | 48 KB | 一系列可以配合地图使用的图标 | [OFL](https://github.com/scottdejonge/map-icons) | [map-icons.com](http://map-icons.com/) | 
| MaterialIcons | 3.0.1 | 1057 | 695KB | Google 的 Material 图标库，4 种样式 | [Apache-2.0](https://github.com/google/material-design-icons/blob/master/LICENSE) | [material.io](https://material.io/tools/icons) |
| Meteocons |  | 47 | 15KB | 一个天气图标库 | [Free](https://www.alessioatzeni.com/meteocons/) | [alessioatzeni.com/meteocons](https://www.alessioatzeni.com/meteocons/) |
| MetrizeIcons | 1.0 | 300 | 74KB | 300 个给设计和开发人员的免费图标 | [Free](https://www.alessioatzeni.com/metrize-icons/) | [alessioatzeni.com/metrize-icons](https://www.alessioatzeni.com/metrize-icons/) |
| OpenIconic | 1.1.1 | 223 | 33KB | 223 个开源矢量图标集 | [OFL](https://github.com/iconic/open-iconic/blob/master/FONT-LICENSE) | [useiconic.com/open](https://useiconic.com/open/) |
| StrawberryIcon | 2.0.0 | 382 | 69KB | 为开发者设计的一套免费开源图标库 | [OFL](https://github.com/xiangsudian/CaoMei) | [chuangzaoshi.com/icon](http://chuangzaoshi.com/icon/) |
| Stroke7 | 1.2.0 | 202 | 44KB | Stroke 7 免费图标集 | [Free](https://www.pixeden.com/icon-fonts/filled-7-icon-font-set) | [themes-pixeden.com/font-demos](http://themes-pixeden.com/font-demos/7-stroke/index.html) |
| TaoBao | 1.0 | 434 | 126KB | 手机淘宝图标库 | 未知 | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=33) |
| ThemifyIcons | 1.0 | 352 | 68KB | Handcrafted 免费图标库 | [Free](https://themify.me/themify-icons) | [themify.me](https://themify.me/themify-icons) |
| Tmall | 1.0 | 564 | 190KB | 天猫图标库 | 未知 | [iconfont.cn](https://www.iconfont.cn/collections/detail?cid=28) |
| Typicons | 2.0.9 | 336 | 82KB | 336 个矢量图标集合在一个库内 | [OFL](https://github.com/stephenhutchings/typicons.font/blob/master/README.md) | [s-ings.com/typicons](https://www.s-ings.com/typicons/) |
| VSCodeIcons | 1.0 | 133 | 24KB | Visual Studio Code 图标库 | [MIT](https://github.com/microsoft/vscode-icons/blob/master/LICENSE-CODE) | [github.com/microsoft/vscode-icons](https://github.com/microsoft/vscode-icons) |
| WeatherIcons | 2.0.10 | 219 | 64KB | 天气相关图标 | [OFL](https://github.com/erikflowers/weather-icons) | [erikflowers.github.io/weather-icons](http://erikflowers.github.io/weather-icons/) |
| Zocial | 1.3.0 | 112 | 31KB | 社交媒体相关图标 | [MIT](https://github.com/smcllns/css-social-buttons/blob/master/LICENSE) | [smcllns.github.io/css-social-buttons/](https://smcllns.github.io/css-social-buttons/) |

### 3. 自定义图标库

#### (1) 字体文件引入

将我们通过各种方式获取的图标库的 `.ttf` 文件拖入 Xcode 工程中，并确保 `Build Phases` 中的 `Copy Bundle Resources` 列表中包含这个字体文件（默认拖入工程就会被包含在内）。

另外，此文件会在运行时按需加载，无需添加到 `Info.plist` 文件中的 `Fonts provided by application` 项内。

#### (2) 实现 `EFIconFontCaseIterableProtocol` 

可通过实现 [EFIconFontCaseIterableProtocol](https://github.com/EFPrefix/EFIconFont/blob/master/EFIconFont/Classes/Core/EFIconFontCaseIterableProtocol.swift) 协议实现图标库的封装，本项目中 Example 以 GitHub 所有的 Octicons 为例 [演示](https://github.com/EFPrefix/EFIconFont/blob/master/Example/EFIconFont-iOS/Octicons/EFIconFontOcticons.swift) 了自定义方式：

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

有人要问这个巨长无比的枚举是怎么手打出来的？当然是代码生成的了...先把 `.svg` 图片上传到 `iconfont.cn`，然后看 [这里](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/iconfont.md)。

#### (3) 调用

同上自带图标库的使用。

```swift
EFIconFontOcticons.thumbsup
```

#### (4) 注意事项

本项目 Example 中的 Octicons 图标库为 GitHub 所有，此处仅为演示，请勿用于任何违反其所有者所定规范的场合：

| 名称 | 版本 | 数量 | 文件大小 | 描述 | 使用规范 | 预览 |
|:-|:-|:-|:-|:-|:-|:-|
| Octicons | 8.4.2 | 184 | 34KB | GitHub 所属图标库 | [GitHub Logos and Usage](https://github.com/logos) | [octicons.github.com](https://octicons.github.com/) |

### 4. 其它

一些 IconFont 资源站点素材的爬取以及代码生成方式：

- [iconfont.cn](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/iconfont.md)
- [fontawesome.com](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/fontawesome.md)
- [material.io/icons/](https://github.com/EFPrefix/EFIconFont/blob/master/Extend/materialicons.md)

## 作者

EyreFree, eyrefree@eyrefree.org

## 协议

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/License_icon-mit-88x31-2.svg/128px-License_icon-mit-88x31-2.svg.png">

EFIconFont 基于 MIT 协议进行分发和使用，更多信息参见 [协议文件](LICENSE)。
