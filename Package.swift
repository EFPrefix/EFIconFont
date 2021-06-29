// swift-tools-version:5.0
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
    platforms: [
        .iOS(.v8),
        .macOS(.v10_11),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "Core", targets: ["Core"]),
        .library(name: "AntDesign", targets: ["Core", "AntDesign"]),
        .library(name: "Dashicons", targets: ["Core", "Dashicons"]),
        .library(name: "Devicons", targets: ["Core", "Devicons"]),
        .library(name: "ElusiveIcons", targets: ["Core", "ElusiveIcons"]),
        .library(name: "EVAIcon", targets: ["Core", "EVAIcon"]),
        .library(name: "EvilIcons", targets: ["Core", "EvilIcons"]),
        .library(name: "FontAwesomeBrands", targets: ["Core", "FontAwesomeBrands"]),
        .library(name: "FontAwesomeRegular", targets: ["Core", "FontAwesomeRegular"]),
        .library(name: "FontAwesomeSolid", targets: ["Core", "FontAwesomeSolid"]),
        .library(name: "FoundationIcons", targets: ["Core", "FoundationIcons"]),
        .library(name: "GenericonsNeue", targets: ["Core", "GenericonsNeue"]),
        .library(name: "HawconsFilled", targets: ["Core", "HawconsFilled"]),
        .library(name: "HawconsStroke", targets: ["Core", "HawconsStroke"]),
        .library(name: "IcoMoon", targets: ["Core", "IcoMoon"]),
        .library(name: "Ionicons", targets: ["Core", "Ionicons"]),
        .library(name: "LigatureSymbols", targets: ["Core", "LigatureSymbols"]),
        .library(name: "MapIcons", targets: ["Core", "MapIcons"]),
        .library(name: "MaterialIconsFilled", targets: ["Core", "MaterialIconsFilled"]),
        .library(name: "MaterialIconsOutlined", targets: ["Core", "MaterialIconsOutlined"]),
        .library(name: "MaterialIconsRounded", targets: ["Core", "MaterialIconsRounded"]),
        .library(name: "MaterialIconsSharp", targets: ["Core", "MaterialIconsSharp"]),
        .library(name: "Meteocons", targets: ["Core", "Meteocons"]),
        .library(name: "MetrizeIcons", targets: ["Core", "MetrizeIcons"]),
        .library(name: "OpenIconic", targets: ["Core", "OpenIconic"]),
        .library(name: "StrawberryIcon", targets: ["Core", "StrawberryIcon"]),
        .library(name: "Stroke7", targets: ["Core", "Stroke7"]),
        .library(name: "ThemifyIcons", targets: ["Core", "ThemifyIcons"]),
        .library(name: "Typicons", targets: ["Core", "Typicons"]),
        .library(name: "VSCodeIcons", targets: ["Core", "VSCodeIcons"]),
        .library(name: "WeatherIcons", targets: ["Core", "WeatherIcons"]),
        .library(name: "Zocial", targets: ["Core", "Zocial"]),
        .library(name: "Complete", targets: ["Core", "AntDesign", "Dashicons", "Devicons", "ElusiveIcons", "EVAIcon", "EvilIcons", "FontAwesomeBrands", "FontAwesomeRegular", "FontAwesomeSolid", "FoundationIcons", "GenericonsNeue", "HawconsFilled", "HawconsStroke", "IcoMoon", "Ionicons", "LigatureSymbols", "MapIcons", "MaterialIconsFilled", "MaterialIconsOutlined", "MaterialIconsRounded", "MaterialIconsSharp", "Meteocons", "MetrizeIcons", "OpenIconic", "StrawberryIcon", "Stroke7", "ThemifyIcons", "Typicons", "VSCodeIcons", "WeatherIcons", "Zocial"])
    ],
    targets: [
        .target(name: "Core", path: "EFIconFont/Classes/Core"),
        .target(name: "AntDesign", path: "EFIconFont/Classes/AntDesign", resources: [.process("EFIconFont/Assets/AntDesign")], dependencies: ["Core"]),
        .target(name: "Dashicons", path: "EFIconFont/Classes/Dashicons", resources: [.process("EFIconFont/Assets/Dashicons")], dependencies: ["Core"]),
        .target(name: "Devicons", path: "EFIconFont/Classes/Devicons", resources: [.process("EFIconFont/Assets/Devicons")], dependencies: ["Core"]),
        .target(name: "ElusiveIcons", path: "EFIconFont/Classes/ElusiveIcons", resources: [.process("EFIconFont/Assets/ElusiveIcons")], dependencies: ["Core"]),
        .target(name: "EVAIcon", path: "EFIconFont/Classes/EVAIcon", resources: [.process("EFIconFont/Assets/EVAIcon")], dependencies: ["Core"]),
        .target(name: "EvilIcons", path: "EFIconFont/Classes/EvilIcons", resources: [.process("EFIconFont/Assets/EvilIcons")], dependencies: ["Core"]),
        .target(name: "FontAwesomeBrands", path: "EFIconFont/Classes/FontAwesomeBrands", resources: [.process("EFIconFont/Assets/FontAwesomeBrands")], dependencies: ["Core"]),
        .target(name: "FontAwesomeRegular", path: "EFIconFont/Classes/FontAwesomeRegular", resources: [.process("EFIconFont/Assets/FontAwesomeRegular")], dependencies: ["Core"]),
        .target(name: "FontAwesomeSolid", path: "EFIconFont/Classes/FontAwesomeSolid", resources: [.process("EFIconFont/Assets/FontAwesomeSolid")], dependencies: ["Core"]),
        .target(name: "FoundationIcons", path: "EFIconFont/Classes/FoundationIcons", resources: [.process("EFIconFont/Assets/FoundationIcons")], dependencies: ["Core"]),
        .target(name: "GenericonsNeue", path: "EFIconFont/Classes/GenericonsNeue", resources: [.process("EFIconFont/Assets/GenericonsNeue")], dependencies: ["Core"]),
        .target(name: "HawconsFilled", path: "EFIconFont/Classes/HawconsFilled", resources: [.process("EFIconFont/Assets/HawconsFilled")], dependencies: ["Core"]),
        .target(name: "HawconsStroke", path: "EFIconFont/Classes/HawconsStroke", resources: [.process("EFIconFont/Assets/HawconsStroke")], dependencies: ["Core"]),
        .target(name: "IcoMoon", path: "EFIconFont/Classes/IcoMoon", resources: [.process("EFIconFont/Assets/IcoMoon")], dependencies: ["Core"]),
        .target(name: "Ionicons", path: "EFIconFont/Classes/Ionicons", resources: [.process("EFIconFont/Assets/Ionicons")], dependencies: ["Core"]),
        .target(name: "LigatureSymbols", path: "EFIconFont/Classes/LigatureSymbols", resources: [.process("EFIconFont/Assets/LigatureSymbols")], dependencies: ["Core"]),
        .target(name: "MapIcons", path: "EFIconFont/Classes/MapIcons", resources: [.process("EFIconFont/Assets/MapIcons")], dependencies: ["Core"]),
        .target(name: "MaterialIconsFilled", path: "EFIconFont/Classes/MaterialIconsFilled", resources: [.process("EFIconFont/Assets/MaterialIconsFilled")], dependencies: ["Core"]),
        .target(name: "MaterialIconsOutlined", path: "EFIconFont/Classes/MaterialIconsOutlined", resources: [.process("EFIconFont/Assets/MaterialIconsOutlined")], dependencies: ["Core"]),
        .target(name: "MaterialIconsRounded", path: "EFIconFont/Classes/MaterialIconsRounded", resources: [.process("EFIconFont/Assets/MaterialIconsRounded")], dependencies: ["Core"]),
        .target(name: "MaterialIconsSharp", path: "EFIconFont/Classes/MaterialIconsSharp", resources: [.process("EFIconFont/Assets/MaterialIconsSharp")], dependencies: ["Core"]),
        .target(name: "Meteocons", path: "EFIconFont/Classes/Meteocons", resources: [.process("EFIconFont/Assets/Meteocons")], dependencies: ["Core"]),
        .target(name: "MetrizeIcons", path: "EFIconFont/Classes/MetrizeIcons", resources: [.process("EFIconFont/Assets/MetrizeIcons")], dependencies: ["Core"]),
        .target(name: "OpenIconic", path: "EFIconFont/Classes/OpenIconic", resources: [.process("EFIconFont/Assets/OpenIconic")], dependencies: ["Core"]),
        .target(name: "StrawberryIcon", path: "EFIconFont/Classes/StrawberryIcon", resources: [.process("EFIconFont/Assets/StrawberryIcon")], dependencies: ["Core"]),
        .target(name: "Stroke7", path: "EFIconFont/Classes/Stroke7", resources: [.process("EFIconFont/Assets/Stroke7")], dependencies: ["Core"]),
        .target(name: "ThemifyIcons", path: "EFIconFont/Classes/ThemifyIcons", resources: [.process("EFIconFont/Assets/ThemifyIcons")], dependencies: ["Core"]),
        .target(name: "Typicons", path: "EFIconFont/Classes/Typicons", resources: [.process("EFIconFont/Assets/Typicons")], dependencies: ["Core"]),
        .target(name: "VSCodeIcons", path: "EFIconFont/Classes/VSCodeIcons", resources: [.process("EFIconFont/Assets/VSCodeIcons")], dependencies: ["Core"]),
        .target(name: "WeatherIcons", path: "EFIconFont/Classes/WeatherIcons", resources: [.process("EFIconFont/Assets/WeatherIcons")], dependencies: ["Core"]),
        .target(name: "Zocial", path: "EFIconFont/Classes/Zocial", resources: [.process("EFIconFont/Assets/Zocial")], dependencies: ["Core"])
    ],
    swiftLanguageVersions: [.v5]
)