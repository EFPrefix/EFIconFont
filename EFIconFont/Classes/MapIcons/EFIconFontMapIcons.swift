//
//  EFIconFontMapIcons.swift
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

    static let mapIcons = EFIconFontMapIcons.self
}

extension EFIconFontMapIcons: EFIconFontCaseIterableProtocol {

    public static var name: String {
        return "map-icons"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontMapIcons: String {
    case abseiling = "\u{e800}"
    case accounting = "\u{e801}"
    case airport = "\u{e802}"
    case amusementPark = "\u{e803}"
    case aquarium = "\u{e804}"
    case archery = "\u{e805}"
    case artGallery = "\u{e806}"
    case assistiveListeningSystem = "\u{e807}"
    case atm = "\u{e808}"
    case audioDescription = "\u{e809}"
    case bakery = "\u{e80a}"
    case bank = "\u{e80b}"
    case bar = "\u{e80c}"
    case baseball = "\u{e80d}"
    case beautySalon = "\u{e80e}"
    case bicycleStore = "\u{e80f}"
    case bicycling = "\u{e810}"
    case boatRamp = "\u{e811}"
    case boatTour = "\u{e812}"
    case boating = "\u{e813}"
    case bookStore = "\u{e814}"
    case bowlingAlley = "\u{e815}"
    case braille = "\u{e816}"
    case busStation = "\u{e817}"
    case cafe = "\u{e818}"
    case campground = "\u{e819}"
    case canoe = "\u{e81a}"
    case carDealer = "\u{e81b}"
    case carRental = "\u{e81c}"
    case carRepair = "\u{e81d}"
    case carWash = "\u{e81e}"
    case casino = "\u{e81f}"
    case cemetery = "\u{e820}"
    case chairlift = "\u{e821}"
    case church = "\u{e822}"
    case circle = "\u{e823}"
    case cityHall = "\u{e824}"
    case climbing = "\u{e825}"
    case closedCaptioning = "\u{e826}"
    case clothingStore = "\u{e827}"
    case compass = "\u{e828}"
    case convenienceStore = "\u{e829}"
    case courthouse = "\u{e82a}"
    case crossCountrySkiing = "\u{e82b}"
    case crosshairs = "\u{e82c}"
    case dentist = "\u{e82d}"
    case departmentStore = "\u{e82e}"
    case diving = "\u{e82f}"
    case doctor = "\u{e830}"
    case electrician = "\u{e831}"
    case electronicsStore = "\u{e832}"
    case embassy = "\u{e833}"
    case expand = "\u{e834}"
    case female = "\u{e835}"
    case finance = "\u{e836}"
    case fireStation = "\u{e837}"
    case fishCleaning = "\u{e838}"
    case fishingPier = "\u{e839}"
    case fishing = "\u{e83a}"
    case florist = "\u{e83b}"
    case food = "\u{e83c}"
    case fullscreen = "\u{e83d}"
    case funeralHome = "\u{e83e}"
    case furnitureStore = "\u{e83f}"
    case gasStation = "\u{e840}"
    case generalContractor = "\u{e841}"
    case golf = "\u{e842}"
    case groceryOrSupermarket = "\u{e843}"
    case gym = "\u{e844}"
    case hairCare = "\u{e845}"
    case hangGliding = "\u{e846}"
    case hardwareStore = "\u{e847}"
    case health = "\u{e848}"
    case hinduTemple = "\u{e849}"
    case horseRiding = "\u{e84a}"
    case hospital = "\u{e84b}"
    case iceFishing = "\u{e84c}"
    case iceSkating = "\u{e84d}"
    case inlineSkating = "\u{e84e}"
    case insuranceAgency = "\u{e84f}"
    case jetSkiing = "\u{e850}"
    case jewelryStore = "\u{e851}"
    case kayaking = "\u{e852}"
    case laundry = "\u{e853}"
    case lawyer = "\u{e854}"
    case library = "\u{e855}"
    case liquorStore = "\u{e856}"
    case localGovernment = "\u{e857}"
    case locationArrow = "\u{e858}"
    case locksmith = "\u{e859}"
    case lodging = "\u{e85a}"
    case lowVisionAccess = "\u{e85b}"
    case male = "\u{e85c}"
    case mapPin = "\u{e85d}"
    case marina = "\u{e85e}"
    case mosque = "\u{e85f}"
    case motobikeTrail = "\u{e860}"
    case movieRental = "\u{e861}"
    case movieTheater = "\u{e862}"
    case movingCompany = "\u{e863}"
    case museum = "\u{e864}"
    case naturalFeature = "\u{e865}"
    case nightClub = "\u{e866}"
    case openCaptioning = "\u{e867}"
    case painter = "\u{e868}"
    case park = "\u{e869}"
    case parking = "\u{e86a}"
    case petStore = "\u{e86b}"
    case pharmacy = "\u{e86c}"
    case physiotherapist = "\u{e86d}"
    case placeOfWorship = "\u{e86e}"
    case playground = "\u{e86f}"
    case plumber = "\u{e870}"
    case pointOfInterest = "\u{e871}"
    case police = "\u{e872}"
    case political = "\u{e873}"
    case postBox = "\u{e874}"
    case postOffice = "\u{e875}"
    case postalCodePrefix = "\u{e876}"
    case postalCode = "\u{e877}"
    case rafting = "\u{e878}"
    case realEstateAgency = "\u{e879}"
    case restaurant = "\u{e87a}"
    case roofingContractor = "\u{e87b}"
    case routePin = "\u{e87c}"
    case route = "\u{e87d}"
    case rvPark = "\u{e87e}"
    case sailing = "\u{e87f}"
    case school = "\u{e880}"
    case scubaDiving = "\u{e881}"
    case search = "\u{e882}"
    case shield = "\u{e883}"
    case shoppingMall = "\u{e884}"
    case signLanguage = "\u{e885}"
    case skateboarding = "\u{e886}"
    case skiJumping = "\u{e887}"
    case skiing = "\u{e888}"
    case sledding = "\u{e889}"
    case snowShoeing = "\u{e88a}"
    case snow = "\u{e88b}"
    case snowboarding = "\u{e88c}"
    case snowmobile = "\u{e88d}"
    case spa = "\u{e88e}"
    case squarePin = "\u{e88f}"
    case squareRounded = "\u{e890}"
    case square = "\u{e891}"
    case stadium = "\u{e892}"
    case storage = "\u{e893}"
    case store = "\u{e894}"
    case subwayStation = "\u{e895}"
    case surfing = "\u{e896}"
    case swimming = "\u{e897}"
    case synagogue = "\u{e898}"
    case taxiStand = "\u{e899}"
    case tennis = "\u{e89a}"
    case toilet = "\u{e89b}"
    case trailWalking = "\u{e89c}"
    case trainStation = "\u{e89d}"
    case transitStation = "\u{e89e}"
    case travelAgency = "\u{e89f}"
    case unisex = "\u{e8a0}"
    case university = "\u{e8a1}"
    case veterinaryCare = "\u{e8a2}"
    case viewing = "\u{e8a3}"
    case volumeControlTelephone = "\u{e8a4}"
    case walking = "\u{e8a5}"
    case waterskiing = "\u{e8a6}"
    case whaleWatching = "\u{e8a7}"
    case wheelchair = "\u{e8a8}"
    case windSurfing = "\u{e8a9}"
    case zoo = "\u{e8aa}"
    case zoomInAlt = "\u{e8ab}"
    case zoomIn = "\u{e8ac}"
    case zoomOutAlt = "\u{e8ad}"
    case zoomOut = "\u{e8ae}"
}
