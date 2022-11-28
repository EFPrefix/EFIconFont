// swift-tools-version:5.3
//
//  Package.swift
//  EFIconFont
//
//  Created by EyreFree on 2021/06/28.
//
//  Copyright (c) 2021-2021 EyreFree <eyrefree@eyrefree.org>
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

import PackageDescription

let package = Package(
    name: "EFIconFont",
    platforms: [.iOS(.v11), .macOS(.v10_13), .tvOS(.v11), .watchOS(.v6)],
    products: [
        .library(name: "EFIconFontCore", targets: ["EFIconFontCore"]),
        .library(name: "EFIconFontAliCloudConsole", targets: ["EFIconFontCore", "EFIconFontAliCloudConsole"]),
        .library(name: "EFIconFontAntDesign", targets: ["EFIconFontCore", "EFIconFontAntDesign"]),
        .library(name: "EFIconFontDashicons", targets: ["EFIconFontCore", "EFIconFontDashicons"]),
        .library(name: "EFIconFontDevicons", targets: ["EFIconFontCore", "EFIconFontDevicons"]),
        .library(name: "EFIconFontElusiveIcons", targets: ["EFIconFontCore", "EFIconFontElusiveIcons"]),
        .library(name: "EFIconFontEVAIcon", targets: ["EFIconFontCore", "EFIconFontEVAIcon"]),
        .library(name: "EFIconFontEvilIcons", targets: ["EFIconFontCore", "EFIconFontEvilIcons"]),
        .library(name: "EFIconFontFontAwesomeBrands", targets: ["EFIconFontCore", "EFIconFontFontAwesomeBrands"]),
        .library(name: "EFIconFontFontAwesomeRegular", targets: ["EFIconFontCore", "EFIconFontFontAwesomeRegular"]),
        .library(name: "EFIconFontFontAwesomeSolid", targets: ["EFIconFontCore", "EFIconFontFontAwesomeSolid"]),
        .library(name: "EFIconFontFoundationIcons", targets: ["EFIconFontCore", "EFIconFontFoundationIcons"]),
        .library(name: "EFIconFontGenericonsNeue", targets: ["EFIconFontCore", "EFIconFontGenericonsNeue"]),
        .library(name: "EFIconFontHawconsFilled", targets: ["EFIconFontCore", "EFIconFontHawconsFilled"]),
        .library(name: "EFIconFontHawconsStroke", targets: ["EFIconFontCore", "EFIconFontHawconsStroke"]),
        .library(name: "EFIconFontIcoMoon", targets: ["EFIconFontCore", "EFIconFontIcoMoon"]),
        .library(name: "EFIconFontIonicons", targets: ["EFIconFontCore", "EFIconFontIonicons"]),
        .library(name: "EFIconFontLigatureSymbols", targets: ["EFIconFontCore", "EFIconFontLigatureSymbols"]),
        .library(name: "EFIconFontMapIcons", targets: ["EFIconFontCore", "EFIconFontMapIcons"]),
        .library(name: "EFIconFontMaterialIconsFilled", targets: ["EFIconFontCore", "EFIconFontMaterialIconsFilled"]),
        .library(name: "EFIconFontMaterialIconsOutlined", targets: ["EFIconFontCore", "EFIconFontMaterialIconsOutlined"]),
        .library(name: "EFIconFontMaterialIconsRounded", targets: ["EFIconFontCore", "EFIconFontMaterialIconsRounded"]),
        .library(name: "EFIconFontMaterialIconsSharp", targets: ["EFIconFontCore", "EFIconFontMaterialIconsSharp"]),
        .library(name: "EFIconFontMeteocons", targets: ["EFIconFontCore", "EFIconFontMeteocons"]),
        .library(name: "EFIconFontMetrizeIcons", targets: ["EFIconFontCore", "EFIconFontMetrizeIcons"]),
        .library(name: "EFIconFontOpenIconic", targets: ["EFIconFontCore", "EFIconFontOpenIconic"]),
        .library(name: "EFIconFontStrawberryIcon", targets: ["EFIconFontCore", "EFIconFontStrawberryIcon"]),
        .library(name: "EFIconFontStroke7", targets: ["EFIconFontCore", "EFIconFontStroke7"]),
        .library(name: "EFIconFontTaoBao", targets: ["EFIconFontCore", "EFIconFontTaoBao"]),
        .library(name: "EFIconFontThemifyIcons", targets: ["EFIconFontCore", "EFIconFontThemifyIcons"]),
        .library(name: "EFIconFontTmall", targets: ["EFIconFontCore", "EFIconFontTmall"]),
        .library(name: "EFIconFontTypicons", targets: ["EFIconFontCore", "EFIconFontTypicons"]),
        .library(name: "EFIconFontVSCodeIcons", targets: ["EFIconFontCore", "EFIconFontVSCodeIcons"]),
        .library(name: "EFIconFontWeatherIcons", targets: ["EFIconFontCore", "EFIconFontWeatherIcons"]),
        .library(name: "EFIconFontZocial", targets: ["EFIconFontCore", "EFIconFontZocial"]),
        .library(name: "EFIconFontComplete", targets: ["EFIconFontCore", "EFIconFontAntDesign", "EFIconFontDashicons", "EFIconFontDevicons", "EFIconFontElusiveIcons", "EFIconFontEVAIcon", "EFIconFontEvilIcons", "EFIconFontFontAwesomeBrands", "EFIconFontFontAwesomeRegular", "EFIconFontFontAwesomeSolid", "EFIconFontFoundationIcons", "EFIconFontGenericonsNeue", "EFIconFontHawconsFilled", "EFIconFontHawconsStroke", "EFIconFontIcoMoon", "EFIconFontIonicons", "EFIconFontLigatureSymbols", "EFIconFontMapIcons", "EFIconFontMaterialIconsFilled", "EFIconFontMaterialIconsOutlined", "EFIconFontMaterialIconsRounded", "EFIconFontMaterialIconsSharp", "EFIconFontMeteocons", "EFIconFontMetrizeIcons", "EFIconFontOpenIconic", "EFIconFontStrawberryIcon", "EFIconFontStroke7", "EFIconFontTaoBao", "EFIconFontThemifyIcons", "EFIconFontTypicons", "EFIconFontVSCodeIcons", "EFIconFontWeatherIcons", "EFIconFontZocial"])
    ],
    targets: [
        .target(name: "EFIconFontCore", path: "EFIconFont/Classes/Core"),
        .target(name: "EFIconFontAliCloudConsole", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/AliCloudConsole", resources: [.process("EFIconFont/Assets/AliCloudConsole")]),
        .target(name: "EFIconFontAntDesign", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/AntDesign", resources: [.process("EFIconFont/Assets/AntDesign")]/*, swiftSettings: [.define("SPM")]*/),
        .target(name: "EFIconFontDashicons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/Dashicons", resources: [.process("EFIconFont/Assets/Dashicons")]),
        .target(name: "EFIconFontDevicons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/Devicons", resources: [.process("EFIconFont/Assets/Devicons")]),
        .target(name: "EFIconFontElusiveIcons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/ElusiveIcons", resources: [.process("EFIconFont/Assets/ElusiveIcons")]),
        .target(name: "EFIconFontEVAIcon", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/EVAIcon", resources: [.process("EFIconFont/Assets/EVAIcon")]),
        .target(name: "EFIconFontEvilIcons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/EvilIcons", resources: [.process("EFIconFont/Assets/EvilIcons")]),
        .target(name: "EFIconFontFontAwesomeBrands", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/FontAwesomeBrands", resources: [.process("EFIconFont/Assets/FontAwesomeBrands")]),
        .target(name: "EFIconFontFontAwesomeRegular", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/FontAwesomeRegular", resources: [.process("EFIconFont/Assets/FontAwesomeRegular")]),
        .target(name: "EFIconFontFontAwesomeSolid", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/FontAwesomeSolid", resources: [.process("EFIconFont/Assets/FontAwesomeSolid")]),
        .target(name: "EFIconFontFoundationIcons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/FoundationIcons", resources: [.process("EFIconFont/Assets/FoundationIcons")]),
        .target(name: "EFIconFontGenericonsNeue", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/GenericonsNeue", resources: [.process("EFIconFont/Assets/GenericonsNeue")]),
        .target(name: "EFIconFontHawconsFilled", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/HawconsFilled", resources: [.process("EFIconFont/Assets/HawconsFilled")]),
        .target(name: "EFIconFontHawconsStroke", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/HawconsStroke", resources: [.process("EFIconFont/Assets/HawconsStroke")]),
        .target(name: "EFIconFontIcoMoon", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/IcoMoon", resources: [.process("EFIconFont/Assets/IcoMoon")]),
        .target(name: "EFIconFontIonicons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/Ionicons", resources: [.process("EFIconFont/Assets/Ionicons")]),
        .target(name: "EFIconFontLigatureSymbols", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/LigatureSymbols", resources: [.process("EFIconFont/Assets/LigatureSymbols")]),
        .target(name: "EFIconFontMapIcons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/MapIcons", resources: [.process("EFIconFont/Assets/MapIcons")]),
        .target(name: "EFIconFontMaterialIconsFilled", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/MaterialIconsFilled", resources: [.process("EFIconFont/Assets/MaterialIconsFilled")]),
        .target(name: "EFIconFontMaterialIconsOutlined", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/MaterialIconsOutlined", resources: [.process("EFIconFont/Assets/MaterialIconsOutlined")]),
        .target(name: "EFIconFontMaterialIconsRounded", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/MaterialIconsRounded", resources: [.process("EFIconFont/Assets/MaterialIconsRounded")]),
        .target(name: "EFIconFontMaterialIconsSharp", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/MaterialIconsSharp", resources: [.process("EFIconFont/Assets/MaterialIconsSharp")]),
        .target(name: "EFIconFontMeteocons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/Meteocons", resources: [.process("EFIconFont/Assets/Meteocons")]),
        .target(name: "EFIconFontMetrizeIcons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/MetrizeIcons", resources: [.process("EFIconFont/Assets/MetrizeIcons")]),
        .target(name: "EFIconFontOpenIconic", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/OpenIconic", resources: [.process("EFIconFont/Assets/OpenIconic")]),
        .target(name: "EFIconFontStrawberryIcon", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/StrawberryIcon", resources: [.process("EFIconFont/Assets/StrawberryIcon")]),
        .target(name: "EFIconFontStroke7", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/Stroke7", resources: [.process("EFIconFont/Assets/Stroke7")]),
        .target(name: "EFIconFontTaoBao", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/TaoBao", resources: [.process("EFIconFont/Assets/TaoBao")]),
        .target(name: "EFIconFontThemifyIcons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/ThemifyIcons", resources: [.process("EFIconFont/Assets/ThemifyIcons")]),
        .target(name: "EFIconFontTmall", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/Tmall", resources: [.process("EFIconFont/Assets/Tmall")]),
        .target(name: "EFIconFontTypicons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/Typicons", resources: [.process("EFIconFont/Assets/Typicons")]),
        .target(name: "EFIconFontVSCodeIcons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/VSCodeIcons", resources: [.process("EFIconFont/Assets/VSCodeIcons")]),
        .target(name: "EFIconFontWeatherIcons", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/WeatherIcons", resources: [.process("EFIconFont/Assets/WeatherIcons")]),
        .target(name: "EFIconFontZocial", dependencies: ["EFIconFontCore"], path: "EFIconFont/Classes/Zocial", resources: [.process("EFIconFont/Assets/Zocial")])
    ],
    swiftLanguageVersions: [.v5]
)
