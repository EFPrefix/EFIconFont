//
//  EFIconFontMaterialIconsFilled.swift
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

    static let materialIconsFilled = EFIconFontMaterialIconsFilled.self
}

extension EFIconFontMaterialIconsFilled: EFIconFontCaseIterableProtocol {

    public static var name: String {
        return "materialiconsfilled"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontMaterialIconsFilled: String {
    case wifiTethering = "\u{f260}"
    case trackChanges = "\u{f25f}"
    case wbIncandescent = "\u{f25e}"
    case tonality = "\u{f25d}"
    case waves = "\u{f25c}"
    case voiceOverOff = "\u{f25b}"
    case viewHeadline = "\u{f25a}"
    case zoomOutMap = "\u{f259}"
    case widgets = "\u{f258}"
    case zoomIn = "\u{f257}"
    case wifi = "\u{f256}"
    case wallpaper = "\u{f255}"
    case verticalAlignCenter = "\u{f254}"
    case wbIridescent = "\u{f253}"
    case viewModule = "\u{f252}"
    case viewAgenda = "\u{f251}"
    case vpnLock = "\u{f250}"
    case wbCloudy = "\u{f24f}"
    case unfoldLess = "\u{f24e}"
    case youtubeSearchedFor = "\u{f24d}"
    case webAsset = "\u{f24c}"
    case wrapText = "\u{f24b}"
    case undo = "\u{f24a}"
    case volumeDown = "\u{f249}"
    case zoomOut = "\u{f248}"
    case verticalSplit = "\u{f247}"
    case volumeOff = "\u{f246}"
    case videoLibrary = "\u{f245}"
    case warning = "\u{f244}"
    case vignette = "\u{f243}"
    case videocamOff = "\u{f242}"
    case transform = "\u{f241}"
    case whereToVote = "\u{f240}"
    case web = "\u{f23f}"
    case wc = "\u{f23e}"
    case voiceChat = "\u{f23d}"
    case viewColumn = "\u{f23c}"
    case wifiOff = "\u{f23b}"
    case timer10 = "\u{f23a}"
    case viewCarousel = "\u{f239}"
    case workOff = "\u{f238}"
    case verticalAlignTop = "\u{f237}"
    case visibilityOff = "\u{f236}"
    case viewComfy = "\u{f235}"
    case volumeUp = "\u{f234}"
    case toys = "\u{f233}"
    case turnedInNot = "\u{f232}"
    case work = "\u{f231}"
    case toll = "\u{f230}"
    case unfoldMore = "\u{f22f}"
    case translate = "\u{f22e}"
    case toggleOff = "\u{f22d}"
    case store = "\u{f22c}"
    case tv = "\u{f22b}"
    case videocam = "\u{f22a}"
    case toggleOn = "\u{f229}"
    case trendingDown = "\u{f228}"
    case wifiLock = "\u{f227}"
    case transitEnterexit = "\u{f226}"
    case viewStream = "\u{f225}"
    case update = "\u{f224}"
    case vpnKey = "\u{f223}"
    case timeline = "\u{f222}"
    case watch = "\u{f221}"
    case wbSunny = "\u{f220}"
    case viewArray = "\u{f21f}"
    case unarchive = "\u{f21e}"
    case voicemail = "\u{f21d}"
    case trendingFlat = "\u{f21c}"
    case watchLater = "\u{f21b}"
    case visibility = "\u{f21a}"
    case train = "\u{f219}"
    case traffic = "\u{f218}"
    case whatshot = "\u{f217}"
    case viewList = "\u{f216}"
    case videoCall = "\u{f215}"
    case textFormat = "\u{f214}"
    case timer = "\u{f213}"
    case textRotationAngledown = "\u{f212}"
    case timeToLeave = "\u{f211}"
    case surroundSound = "\u{f210}"
    case tabletAndroid = "\u{f20f}"
    case textRotateUp = "\u{f20e}"
    case thumbUp = "\u{f20d}"
    case vibration = "\u{f20c}"
    case trendingUp = "\u{f20b}"
    case workOutline = "\u{f20a}"
    case wbAuto = "\u{f209}"
    case viewDay = "\u{f208}"
    case textsms = "\u{f207}"
    case tune = "\u{f206}"
    case videoLabel = "\u{f205}"
    case viewQuilt = "\u{f204}"
    case usb = "\u{f203}"
    case volumeMute = "\u{f202}"
    case touchApp = "\u{f201}"
    case viewCompact = "\u{f200}"
    case unsubscribe = "\u{f1ff}"
    case sportsHockey = "\u{f1fe}"
    case storefront = "\u{f1fd}"
    case theaters = "\u{f1fc}"
    case spaceBar = "\u{f1fb}"
    case supervisorAccount = "\u{f1fa}"
    case viewWeek = "\u{f1f9}"
    case textRotateVertical = "\u{f1f8}"
    case turnedIn = "\u{f1f7}"
    case texture = "\u{f1f6}"
    case style = "\u{f1f5}"
    case supervisedUserCircle = "\u{f1f4}"
    case terrain = "\u{f1f3}"
    case sportsBasketball = "\u{f1f2}"
    case subscriptions = "\u{f1f1}"
    case timerOff = "\u{f1f0}"
    case settingsRemote = "\u{f1ef}"
    case textRotationNone = "\u{f1ee}"
    case tabUnselected = "\u{f1ed}"
    case tab = "\u{f1ec}"
    case subtitles = "\u{f1eb}"
    case verifiedUser = "\u{f1ea}"
    case systemUpdateAlt = "\u{f1e9}"
    case textFields = "\u{f1e8}"
    case tripOrigin = "\u{f1e7}"
    case swapHorizontalCircle = "\u{f1e6}"
    case tablet = "\u{f1e5}"
    case tableChart = "\u{f1e4}"
    case swapCalls = "\u{f1e3}"
    case timer3 = "\u{f1e2}"
    case tram = "\u{f1e1}"
    case shopTwo = "\u{f1e0}"
    case stopScreenShare = "\u{f1df}"
    case syncProblem = "\u{f1de}"
    case videogameAsset = "\u{f1dd}"
    case streetview = "\u{f1dc}"
    case thumbDownAlt = "\u{f1db}"
    case subway = "\u{f1da}"
    case toc = "\u{f1d9}"
    case textRotationAngleup = "\u{f1d8}"
    case signalWifi4Bar = "\u{f1d7}"
    case sms = "\u{f1d6}"
    case thumbDown = "\u{f1d5}"
    case verticalAlignBottom = "\u{f1d4}"
    case signalCellularAlt = "\u{f1d3}"
    case swapVert = "\u{f1d2}"
    case straighten = "\u{f1d1}"
    case sports = "\u{f1d0}"
    case speaker = "\u{f1cf}"
    case transferWithinAStation = "\u{f1ce}"
    case thumbUpAlt = "\u{f1cd}"
    case signalWifiOff = "\u{f1cc}"
    case storage = "\u{f1cb}"
    case stayCurrentPortrait = "\u{f1ca}"
    case syncDisabled = "\u{f1c9}"
    case syncAlt = "\u{f1c8}"
    case tvOff = "\u{f1c7}"
    case systemUpdate = "\u{f1c6}"
    case starBorder = "\u{f1c5}"
    case sportsKabaddi = "\u{f1c4}"
    case speakerGroup = "\u{f1c3}"
    case sportsCricket = "\u{f1c2}"
    case thumbsUpDown = "\u{f1c1}"
    case subject = "\u{f1c0}"
    case stayPrimaryPortrait = "\u{f1bf}"
    case textRotationDown = "\u{f1be}"
    case today = "\u{f1bd}"
    case settingsSystemDaydream = "\u{f1bc}"
    case stop = "\u{f1bb}"
    case settingsPower = "\u{f1ba}"
    case strikethroughS = "\u{f1b9}"
    case sync = "\u{f1b8}"
    case swapHoriz = "\u{f1b7}"
    case settingsVoice = "\u{f1b6}"
    case showChart = "\u{f1b5}"
    case sportsSoccer = "\u{f1b4}"
    case title = "\u{f1b3}"
    case tagFaces = "\u{f1b2}"
    case stayPrimaryLandscape = "\u{f1b1}"
    case stars = "\u{f1b0}"
    case subdirectoryArrowRight = "\u{f1af}"
    case smartphone = "\u{f1ae}"
    case timelapse = "\u{f1ad}"
    case sportsMotorsports = "\u{f1ac}"
    case singleBed = "\u{f1ab}"
    case smokingRooms = "\u{f1aa}"
    case sportsRugby = "\u{f1a9}"
    case tabletMac = "\u{f1a8}"
    case sportsTennis = "\u{f1a7}"
    case sportsEsports = "\u{f1a6}"
    case spellcheck = "\u{f1a5}"
    case sportsHandball = "\u{f1a4}"
    case signalCellular4Bar = "\u{f1a3}"
    case squareFoot = "\u{f1a2}"
    case snooze = "\u{f1a1}"
    case sportsBaseball = "\u{f1a0}"
    case speakerNotesOff = "\u{f19f}"
    case switchCamera = "\u{f19e}"
    case smokeFree = "\u{f19d}"
    case speed = "\u{f19c}"
    case speakerNotes = "\u{f19b}"
    case tapAndPlay = "\u{f19a}"
    case subdirectoryArrowLeft = "\u{f199}"
    case switchVideo = "\u{f198}"
    case signalCellularConnectedNoInternet4Bar = "\u{f197}"
    case skipPrevious = "\u{f196}"
    case shoppingCart = "\u{f195}"
    case smsFailed = "\u{f194}"
    case shoppingBasket = "\u{f193}"
    case starHalf = "\u{f192}"
    case sort = "\u{f191}"
    case swapVerticalCircle = "\u{f190}"
    case share = "\u{f18f}"
    case sdCard = "\u{f18e}"
    case settingsInputHdmi = "\u{f18d}"
    case sportsVolleyball = "\u{f18c}"
    case send = "\u{f18b}"
    case radio = "\u{f18a}"
    case settingsBrightness = "\u{f189}"
    case spa = "\u{f188}"
    case settingsPhone = "\u{f187}"
    case settingsInputComposite = "\u{f186}"
    case sportsMma = "\u{f185}"
    case signalCellularOff = "\u{f184}"
    case star = "\u{f183}"
    case signalWifi4BarLock = "\u{f182}"
    case speakerPhone = "\u{f181}"
    case settingsInputAntenna = "\u{f180}"
    case storeMallDirectory = "\u{f17f}"
    case sentimentVeryDissatisfied = "\u{f17e}"
    case screenLockLandscape = "\u{f17d}"
    case settingsBackupRestore = "\u{f17c}"
    case sentimentSatisfied = "\u{f17b}"
    case shortText = "\u{f17a}"
    case sportsFootball = "\u{f179}"
    case simCard = "\u{f178}"
    case shutterSpeed = "\u{f177}"
    case settingsApplications = "\u{f176}"
    case sentimentDissatisfied = "\u{f175}"
    case settingsCell = "\u{f174}"
    case slideshow = "\u{f173}"
    case shop = "\u{f172}"
    case sportsGolf = "\u{f171}"
    case scanner = "\u{f170}"
    case sentimentVerySatisfied = "\u{f16f}"
    case settingsInputSvideo = "\u{f16e}"
    case rotateRight = "\u{f16d}"
    case stayCurrentLandscape = "\u{f16c}"
    case settingsOverscan = "\u{f16b}"
    case signalCellularNoSim = "\u{f16a}"
    case sdStorage = "\u{f169}"
    case skipNext = "\u{f168}"
    case settingsBluetooth = "\u{f167}"
    case sortByAlpha = "\u{f166}"
    case rotate90DegreesCcw = "\u{f165}"
    case room = "\u{f164}"
    case removeShoppingCart = "\u{f163}"
    case replay5 = "\u{f162}"
    case settingsInputComponent = "\u{f161}"
    case school = "\u{f160}"
    case search = "\u{f15f}"
    case screenShare = "\u{f15e}"
    case screenLockPortrait = "\u{f15d}"
    case screenRotation = "\u{f15c}"
    case sentimentSatisfiedAlt = "\u{f15b}"
    case reportProblem = "\u{f15a}"
    case scatterPlot = "\u{f159}"
    case replay10 = "\u{f158}"
    case rowing = "\u{f157}"
    case slowMotionVideo = "\u{f156}"
    case shuffle = "\u{f155}"
    case redo = "\u{f154}"
    case saveAlt = "\u{f153}"
    case router = "\u{f152}"
    case refresh = "\u{f151}"
    case restaurantMenu = "\u{f150}"
    case settingsEthernet = "\u{f14f}"
    case signalCellularNull = "\u{f14e}"
    case redeem = "\u{f14d}"
    case security = "\u{f14c}"
    case restorePage = "\u{f14b}"
    case restaurant = "\u{f14a}"
    case replay30 = "\u{f149}"
    case satellite = "\u{f148}"
    case restore = "\u{f147}"
    case screenLockRotation = "\u{f146}"
    case replay = "\u{f145}"
    case selectAll = "\u{f144}"
    case replyAll = "\u{f143}"
    case save = "\u{f142}"
    case recentActors = "\u{f141}"
    case removeCircleOutline = "\u{f140}"
    case repeatOne = "\u{f13f}"
    case reply = "\u{f13e}"
    case removeFromQueue = "\u{f13d}"
    case roomService = "\u{f13c}"
    case rvHookup = "\u{f13b}"
    case rssFeed = "\u{f13a}"
    case queueMusic = "\u{f139}"
    case `repeat` = "\u{f138}"
    case roundedCorner = "\u{f137}"
    case removeRedEye = "\u{f136}"
    case ringVolume = "\u{f135}"
    case plusOne = "\u{f134}"
    case recordVoiceOver = "\u{f133}"
    case radioButtonUnchecked = "\u{f132}"
    case removeCircle = "\u{f131}"
    case score = "\u{f130}"
    case polymer = "\u{f12f}"
    case poll = "\u{f12e}"
    case queue = "\u{f12d}"
    case rotateLeft = "\u{f12c}"
    case queuePlayNext = "\u{f12b}"
    case radioButtonChecked = "\u{f12a}"
    case restoreFromTrash = "\u{f129}"
    case pregnantWoman = "\u{f128}"
    case schedule = "\u{f127}"
    case reportOff = "\u{f126}"
    case `public` = "\u{f125}"
    case rateReview = "\u{f124}"
    case publish = "\u{f123}"
    case pool = "\u{f122}"
    case powerInput = "\u{f121}"
    case reorder = "\u{f120}"
    case receipt = "\u{f11f}"
    case remove = "\u{f11e}"
    case postAdd = "\u{f11d}"
    case powerOff = "\u{f11c}"
    case pictureInPicture = "\u{f11b}"
    case priorityHigh = "\u{f11a}"
    case policy = "\u{f119}"
    case questionAnswer = "\u{f118}"
    case photoSizeSelectActual = "\u{f117}"
    case pictureInPictureAlt = "\u{f116}"
    case presentToAll = "\u{f115}"
    case printDisabled = "\u{f114}"
    case pieChart = "\u{f113}"
    case queryBuilder = "\u{f112}"
    case report = "\u{f111}"
    case portrait = "\u{f110}"
    case phonelinkRing = "\u{f10f}"
    case powerSettingsNew = "\u{f10e}"
    case playForWork = "\u{f10d}"
    case playlistAddCheck = "\u{f10c}"
    case print = "\u{f10b}"
    case photoLibrary = "\u{f10a}"
    case pictureAsPdf = "\u{f109}"
    case power = "\u{f108}"
    case phoneMissed = "\u{f107}"
    case playlistPlay = "\u{f106}"
    case playlistAdd = "\u{f105}"
    case playCircleFilled = "\u{f104}"
    case photoSizeSelectSmall = "\u{f103}"
    case portableWifiOff = "\u{f102}"
    case playArrow = "\u{f101}"
    case phonelinkErase = "\u{f100}"
    case photoSizeSelectLarge = "\u{f0ff}"
    case photoFilter = "\u{f0fe}"
    case playCircleOutline = "\u{f0fd}"
    case photo = "\u{f0fc}"
    case phonelinkOff = "\u{f0fb}"
    case phone = "\u{f0fa}"
    case photoCamera = "\u{f0f9}"
    case photoAlbum = "\u{f0f8}"
    case phonelinkSetup = "\u{f0f7}"
    case phoneInTalk = "\u{f0f6}"
    case phoneLocked = "\u{f0f5}"
    case phonelinkLock = "\u{f0f4}"
    case phonelink = "\u{f0f3}"
    case phonePaused = "\u{f0f2}"
    case phoneIphone = "\u{f0f1}"
    case phoneDisabled = "\u{f0f0}"
    case phoneCallback = "\u{f0ef}"
    case phoneEnabled = "\u{f0ee}"
    case phoneForwarded = "\u{f0ed}"
    case phoneBluetoothSpeaker = "\u{f0ec}"
    case movie = "\u{f0eb}"
    case missedVideoCall = "\u{f0ea}"
    case permPhoneMsg = "\u{f0e9}"
    case panorama = "\u{f0e8}"
    case openInBrowser = "\u{f0e7}"
    case menu = "\u{f0e6}"
    case outdoorGrill = "\u{f0e5}"
    case naturePeople = "\u{f0e4}"
    case notificationsActive = "\u{f0e3}"
    case pauseCircleFilled = "\u{f0e2}"
    case permDataSetting = "\u{f0e1}"
    case pauseCircleOutline = "\u{f0e0}"
    case localFlorist = "\u{f0df}"
    case notificationsPaused = "\u{f0de}"
    case notInterested = "\u{f0dd}"
    case mic = "\u{f0dc}"
    case offlinePin = "\u{f0db}"
    case localHospital = "\u{f0da}"
    case person = "\u{f0d9}"
    case openWith = "\u{f0d8}"
    case permMedia = "\u{f0d7}"
    case personalVideo = "\u{f0d6}"
    case markunread = "\u{f0d5}"
    case keyboardHide = "\u{f0d4}"
    case personAdd = "\u{f0d3}"
    case openInNew = "\u{f0d2}"
    case panoramaVertical = "\u{f0d1}"
    case notifications = "\u{f0d0}"
    case panoramaHorizontal = "\u{f0cf}"
    case panoramaFishEye = "\u{f0ce}"
    case pets = "\u{f0cd}"
    case offlineBolt = "\u{f0cc}"
    case permContactCalendar = "\u{f0cb}"
    case people = "\u{f0ca}"
    case moodBad = "\u{f0c9}"
    case localParking = "\u{f0c8}"
    case permCameraMic = "\u{f0c7}"
    case peopleAlt = "\u{f0c6}"
    case localConvenienceStore = "\u{f0c5}"
    case permDeviceInformation = "\u{f0c4}"
    case pageview = "\u{f0c3}"
    case monetizationOn = "\u{f0c2}"
    case personOutline = "\u{f0c1}"
    case personPin = "\u{f0c0}"
    case ondemandVideo = "\u{f0bf}"
    case musicOff = "\u{f0be}"
    case notificationsOff = "\u{f0bd}"
    case localDrink = "\u{f0bc}"
    case permIdentity = "\u{f0bb}"
    case mouse = "\u{f0ba}"
    case pause = "\u{f0b9}"
    case panTool = "\u{f0b8}"
    case multilineChart = "\u{f0b7}"
    case panoramaWideAngle = "\u{f0b6}"
    case moveToInbox = "\u{f0b5}"
    case localLaundryService = "\u{f0b4}"
    case permScanWifi = "\u{f0b3}"
    case partyMode = "\u{f0b2}"
    case modeComment = "\u{f0b1}"
    case localLibrary = "\u{f0b0}"
    case noSim = "\u{f0af}"
    case moneyOff = "\u{f0ae}"
    case motorcycle = "\u{f0ad}"
    case movieFilter = "\u{f0ac}"
    case payment = "\u{f0ab}"
    case localGroceryStore = "\u{f0aa}"
    case lock = "\u{f0a9}"
    case nfc = "\u{f0a8}"
    case localGasStation = "\u{f0a7}"
    case localHotel = "\u{f0a6}"
    case outlinedFlag = "\u{f0a5}"
    case movieCreation = "\u{f0a4}"
    case notes = "\u{f0a3}"
    case localMall = "\u{f0a2}"
    case museum = "\u{f0a1}"
    case opacity = "\u{f0a0}"
    case personAddDisabled = "\u{f09f}"
    case micOff = "\u{f09e}"
    case notificationsNone = "\u{f09d}"
    case phoneAndroid = "\u{f09c}"
    case mobileScreenShare = "\u{f09b}"
    case more = "\u{f09a}"
    case pausePresentation = "\u{f099}"
    case mail = "\u{f098}"
    case pages = "\u{f097}"
    case peopleOutline = "\u{f096}"
    case lineWeight = "\u{f095}"
    case map = "\u{f094}"
    case noteAdd = "\u{f093}"
    case notificationImportant = "\u{f092}"
    case locationDisabled = "\u{f091}"
    case noEncryption = "\u{f090}"
    case networkLocked = "\u{f08f}"
    case monochromePhotos = "\u{f08e}"
    case musicNote = "\u{f08d}"
    case note = "\u{f08c}"
    case money = "\u{f08b}"
    case libraryBooks = "\u{f08a}"
    case menuOpen = "\u{f089}"
    case meetingRoom = "\u{f088}"
    case localDining = "\u{f087}"
    case mobileOff = "\u{f086}"
    case nightsStay = "\u{f085}"
    case message = "\u{f084}"
    case looksTwo = "\u{f083}"
    case localBar = "\u{f082}"
    case noMeetingRoom = "\u{f081}"
    case markunreadMailbox = "\u{f080}"
    case moreVert = "\u{f07f}"
    case menuBook = "\u{f07e}"
    case palette = "\u{f07d}"
    case memory = "\u{f07c}"
    case navigation = "\u{f07b}"
    case moreHoriz = "\u{f07a}"
    case mobileFriendly = "\u{f079}"
    case localCarWash = "\u{f078}"
    case layersClear = "\u{f077}"
    case locationSearching = "\u{f076}"
    case nextWeek = "\u{f075}"
    case loupe = "\u{f074}"
    case micNone = "\u{f073}"
    case layers = "\u{f072}"
    case locationCity = "\u{f071}"
    case nearMe = "\u{f070}"
    case minimize = "\u{f06f}"
    case mms = "\u{f06e}"
    case mood = "\u{f06d}"
    case networkCheck = "\u{f06c}"
    case labelImportant = "\u{f06b}"
    case liveHelp = "\u{f06a}"
    case localPharmacy = "\u{f069}"
    case navigateBefore = "\u{f068}"
    case libraryAdd = "\u{f067}"
    case leakAdd = "\u{f066}"
    case newReleases = "\u{f065}"
    case localPostOffice = "\u{f064}"
    case localShipping = "\u{f063}"
    case musicVideo = "\u{f062}"
    case loop = "\u{f061}"
    case looksOne = "\u{f060}"
    case localCafe = "\u{f05f}"
    case lockOpen = "\u{f05e}"
    case link = "\u{f05d}"
    case listAlt = "\u{f05c}"
    case localTaxi = "\u{f05b}"
    case localPizza = "\u{f05a}"
    case invertColors = "\u{f059}"
    case localMovies = "\u{f058}"
    case localPlay = "\u{f057}"
    case kitchen = "\u{f056}"
    case navigateNext = "\u{f055}"
    case list = "\u{f054}"
    case localAtm = "\u{f053}"
    case mergeType = "\u{f052}"
    case insertComment = "\u{f051}"
    case label = "\u{f050}"
    case maximize = "\u{f04f}"
    case localPrintshop = "\u{f04e}"
    case localOffer = "\u{f04d}"
    case loyalty = "\u{f04c}"
    case keyboardArrowDown = "\u{f04b}"
    case nature = "\u{f04a}"
    case labelOff = "\u{f049}"
    case myLocation = "\u{f048}"
    case libraryMusic = "\u{f047}"
    case lineStyle = "\u{f046}"
    case lowPriority = "\u{f045}"
    case looks = "\u{f044}"
    case looks3 = "\u{f043}"
    case localPhone = "\u{f042}"
    case leakRemove = "\u{f041}"
    case mailOutline = "\u{f040}"
    case looks5 = "\u{f03f}"
    case looks6 = "\u{f03e}"
    case localActivity = "\u{f03d}"
    case launch = "\u{f03c}"
    case laptopWindows = "\u{f03b}"
    case looks4 = "\u{f03a}"
    case keyboardTab = "\u{f039}"
    case keyboardReturn = "\u{f038}"
    case laptopMac = "\u{f037}"
    case keyboard = "\u{f036}"
    case localAirport = "\u{f035}"
    case insertDriveFile = "\u{f034}"
    case laptop = "\u{f033}"
    case landscape = "\u{f032}"
    case kingBed = "\u{f031}"
    case imageAspectRatio = "\u{f030}"
    case keyboardArrowLeft = "\u{f02f}"
    case linearScale = "\u{f02e}"
    case https = "\u{f02d}"
    case language = "\u{f02c}"
    case inbox = "\u{f02b}"
    case linkedCamera = "\u{f02a}"
    case localSee = "\u{f029}"
    case image = "\u{f028}"
    case helpOutline = "\u{f027}"
    case laptopChromebook = "\u{f026}"
    case liveTv = "\u{f025}"
    case imageSearch = "\u{f024}"
    case insertEmoticon = "\u{f023}"
    case insertChartOutlined = "\u{f022}"
    case insertLink = "\u{f021}"
    case lens = "\u{f020}"
    case keyboardBackspace = "\u{f01f}"
    case invertColorsOff = "\u{f01e}"
    case keyboardCapslock = "\u{f01d}"
    case http = "\u{f01c}"
    case grain = "\u{f01b}"
    case insertInvitation = "\u{f01a}"
    case importContacts = "\u{f019}"
    case linkOff = "\u{f018}"
    case headsetMic = "\u{f017}"
    case iso = "\u{f016}"
    case keyboardArrowUp = "\u{f015}"
    case help = "\u{f014}"
    case lastPage = "\u{f013}"
    case home = "\u{f012}"
    case highlight = "\u{f011}"
    case house = "\u{f010}"
    case hdrOn = "\u{f00f}"
    case info = "\u{f00e}"
    case keyboardVoice = "\u{f00d}"
    case importExport = "\u{f00c}"
    case hearing = "\u{f00b}"
    case insertChart = "\u{f00a}"
    case importantDevices = "\u{f009}"
    case gamepad = "\u{f008}"
    case howToReg = "\u{f007}"
    case insertPhoto = "\u{f006}"
    case hourglassEmpty = "\u{f005}"
    case keyboardArrowRight = "\u{f004}"
    case gradient = "\u{f003}"
    case gesture = "\u{f002}"
    case hotel = "\u{f001}"
    case hourglassFull = "\u{f000}"
    case input = "\u{efff}"
    case indeterminateCheckBox = "\u{effe}"
    case history = "\u{effd}"
    case formatLineSpacing = "\u{effc}"
    case highQuality = "\u{effb}"
    case hdrStrong = "\u{effa}"
    case howToVote = "\u{eff9}"
    case highlightOff = "\u{eff8}"
    case homeWork = "\u{eff7}"
    case hd = "\u{eff6}"
    case flashOn = "\u{eff5}"
    case hotTub = "\u{eff4}"
    case hdrWeak = "\u{eff3}"
    case gridOff = "\u{eff2}"
    case gif = "\u{eff1}"
    case healing = "\u{eff0}"
    case formatListBulleted = "\u{efef}"
    case getApp = "\u{efee}"
    case games = "\u{efed}"
    case gavel = "\u{efec}"
    case functions = "\u{efeb}"
    case gTranslate = "\u{efea}"
    case horizontalSplit = "\u{efe9}"
    case graphicEq = "\u{efe8}"
    case groupWork = "\u{efe7}"
    case groupAdd = "\u{efe6}"
    case gpsNotFixed = "\u{efe5}"
    case height = "\u{efe4}"
    case gpsOff = "\u{efe3}"
    case formatTextdirectionRToL = "\u{efe2}"
    case hdrOff = "\u{efe1}"
    case golfCourse = "\u{efe0}"
    case forum = "\u{efdf}"
    case formatIndentDecrease = "\u{efde}"
    case forward30 = "\u{efdd}"
    case fullscreen = "\u{efdc}"
    case folder = "\u{efdb}"
    case formatTextdirectionLToR = "\u{efda}"
    case gridOn = "\u{efd9}"
    case headset = "\u{efd8}"
    case forward10 = "\u{efd7}"
    case gpsFixed = "\u{efd6}"
    case grade = "\u{efd5}"
    case fullscreenExit = "\u{efd4}"
    case group = "\u{efd3}"
    case freeBreakfast = "\u{efd2}"
    case forward = "\u{efd1}"
    case fitnessCenter = "\u{efd0}"
    case formatListNumbered = "\u{efcf}"
    case formatUnderlined = "\u{efce}"
    case formatSize = "\u{efcd}"
    case formatListNumberedRtl = "\u{efcc}"
    case formatAlignRight = "\u{efcb}"
    case forward5 = "\u{efca}"
    case formatQuote = "\u{efc9}"
    case formatClear = "\u{efc8}"
    case formatIndentIncrease = "\u{efc7}"
    case flag = "\u{efc6}"
    case formatItalic = "\u{efc5}"
    case formatColorReset = "\u{efc4}"
    case formatStrikethrough = "\u{efc3}"
    case formatAlignCenter = "\u{efc2}"
    case formatPaint = "\u{efc1}"
    case folderOpen = "\u{efc0}"
    case flipToBack = "\u{efbf}"
    case flashAuto = "\u{efbe}"
    case filterDrama = "\u{efbd}"
    case flightLand = "\u{efbc}"
    case flipCameraIos = "\u{efbb}"
    case formatAlignLeft = "\u{efba}"
    case formatAlignJustify = "\u{efb9}"
    case flipToFront = "\u{efb8}"
    case formatShapes = "\u{efb7}"
    case folderShared = "\u{efb6}"
    case folderSpecial = "\u{efb5}"
    case fireplace = "\u{efb4}"
    case fontDownload = "\u{efb3}"
    case flipCameraAndroid = "\u{efb2}"
    case flip = "\u{efb1}"
    case flashOff = "\u{efb0}"
    case firstPage = "\u{efaf}"
    case flightTakeoff = "\u{efae}"
    case findInPage = "\u{efad}"
    case formatBold = "\u{efac}"
    case flare = "\u{efab}"
    case flight = "\u{efaa}"
    case filter = "\u{efa9}"
    case filterBAndW = "\u{efa8}"
    case filterFrames = "\u{efa7}"
    case filterList = "\u{efa6}"
    case filter5 = "\u{efa5}"
    case fingerprint = "\u{efa4}"
    case filter8 = "\u{efa3}"
    case filter9 = "\u{efa2}"
    case filterTiltShift = "\u{efa1}"
    case filterHdr = "\u{efa0}"
    case findReplace = "\u{ef9f}"
    case filterVintage = "\u{ef9e}"
    case filterNone = "\u{ef9d}"
    case filter6 = "\u{ef9c}"
    case filterCenterFocus = "\u{ef9b}"
    case filter9Plus = "\u{ef9a}"
    case filter7 = "\u{ef99}"
    case filter4 = "\u{ef98}"
    case filter1 = "\u{ef97}"
    case filter3 = "\u{ef96}"
    case filter2 = "\u{ef95}"
    case fileCopy = "\u{ef94}"
    case fiberDvr = "\u{ef93}"
    case directionsSubway = "\u{ef92}"
    case featuredPlayList = "\u{ef91}"
    case exposurePlus1 = "\u{ef90}"
    case eventNote = "\u{ef8f}"
    case expandMore = "\u{ef8e}"
    case emojiSymbols = "\u{ef8d}"
    case enhancedEncryption = "\u{ef8c}"
    case creditCard = "\u{ef8b}"
    case emojiEvents = "\u{ef8a}"
    case fiberPin = "\u{ef89}"
    case fiberManualRecord = "\u{ef88}"
    case face = "\u{ef87}"
    case emojiFlags = "\u{ef86}"
    case favoriteBorder = "\u{ef85}"
    case error = "\u{ef84}"
    case drafts = "\u{ef83}"
    case create = "\u{ef82}"
    case cloud = "\u{ef81}"
    case directionsRailway = "\u{ef80}"
    case editAttributes = "\u{ef7f}"
    case exposurePlus2 = "\u{ef7e}"
    case emojiObjects = "\u{ef7d}"
    case dragIndicator = "\u{ef7c}"
    case exposureNeg2 = "\u{ef7b}"
    case featuredVideo = "\u{ef7a}"
    case euroSymbol = "\u{ef79}"
    case devicesOther = "\u{ef78}"
    case directionsRun = "\u{ef77}"
    case edit = "\u{ef76}"
    case controlCamera = "\u{ef75}"
    case dvr = "\u{ef74}"
    case fiberSmartRecord = "\u{ef73}"
    case exposure = "\u{ef72}"
    case domainDisabled = "\u{ef71}"
    case fastfood = "\u{ef70}"
    case crop32 = "\u{ef6f}"
    case dragHandle = "\u{ef6e}"
    case details = "\u{ef6d}"
    case doneOutline = "\u{ef6c}"
    case expandLess = "\u{ef6b}"
    case eventBusy = "\u{ef6a}"
    case emojiNature = "\u{ef69}"
    case donutLarge = "\u{ef68}"
    case directionsWalk = "\u{ef67}"
    case contactSupport = "\u{ef66}"
    case contactless = "\u{ef65}"
    case fastForward = "\u{ef64}"
    case feedback = "\u{ef63}"
    case exploreOff = "\u{ef62}"
    case fastRewind = "\u{ef61}"
    case errorOutline = "\u{ef60}"
    case donutSmall = "\u{ef5f}"
    case discFull = "\u{ef5e}"
    case desktopAccessDisabled = "\u{ef5d}"
    case collectionsBookmark = "\u{ef5c}"
    case dynamicFeed = "\u{ef5b}"
    case explicit = "\u{ef5a}"
    case favorite = "\u{ef59}"
    case exposureZero = "\u{ef58}"
    case eco = "\u{ef57}"
    case event = "\u{ef56}"
    case dock = "\u{ef55}"
    case controlPointDuplicate = "\u{ef54}"
    case cloudCircle = "\u{ef53}"
    case equalizer = "\u{ef52}"
    case explore = "\u{ef51}"
    case dns = "\u{ef50}"
    case exitToApp = "\u{ef4f}"
    case emojiEmotions = "\u{ef4e}"
    case emojiPeople = "\u{ef4d}"
    case directionsBus = "\u{ef4c}"
    case euro = "\u{ef4b}"
    case fiberNew = "\u{ef4a}"
    case eject = "\u{ef49}"
    case contacts = "\u{ef48}"
    case crop54 = "\u{ef47}"
    case deviceUnknown = "\u{ef46}"
    case cropPortrait = "\u{ef45}"
    case driveEta = "\u{ef44}"
    case compassCalibration = "\u{ef43}"
    case doneAll = "\u{ef42}"
    case exposureNeg1 = "\u{ef41}"
    case crop75 = "\u{ef40}"
    case emojiTransportation = "\u{ef3f}"
    case eventAvailable = "\u{ef3e}"
    case email = "\u{ef3d}"
    case departureBoard = "\u{ef3c}"
    case deleteForever = "\u{ef3b}"
    case comment = "\u{ef3a}"
    case `extension` = "\u{ef39}"
    case contactPhone = "\u{ef38}"
    case directions = "\u{ef37}"
    case directionsCar = "\u{ef36}"
    case closedCaption = "\u{ef35}"
    case duo = "\u{ef34}"
    case dialerSip = "\u{ef33}"
    case emojiFoodBeverage = "\u{ef32}"
    case done = "\u{ef31}"
    case collections = "\u{ef30}"
    case chatBubbleOutline = "\u{ef2f}"
    case eventSeat = "\u{ef2e}"
    case doubleArrow = "\u{ef2d}"
    case evStation = "\u{ef2c}"
    case dateRange = "\u{ef2b}"
    case crop169 = "\u{ef2a}"
    case devices = "\u{ef29}"
    case copyright = "\u{ef28}"
    case deleteOutline = "\u{ef27}"
    case `class` = "\u{ef26}"
    case directionsTransit = "\u{ef25}"
    case cancel = "\u{ef24}"
    case centerFocusStrong = "\u{ef23}"
    case desktopMac = "\u{ef22}"
    case directionsBike = "\u{ef21}"
    case compareArrows = "\u{ef20}"
    case contactMail = "\u{ef1f}"
    case dialpad = "\u{ef1e}"
    case camera = "\u{ef1d}"
    case developerBoard = "\u{ef1c}"
    case commute = "\u{ef1b}"
    case description = "\u{ef1a}"
    case deleteSweep = "\u{ef19}"
    case crop = "\u{ef18}"
    case deviceHub = "\u{ef17}"
    case computer = "\u{ef16}"
    case chevronLeft = "\u{ef15}"
    case createNewFolder = "\u{ef14}"
    case desktopWindows = "\u{ef13}"
    case checkBox = "\u{ef12}"
    case code = "\u{ef11}"
    case callReceived = "\u{ef10}"
    case directionsBoat = "\u{ef0f}"
    case deck = "\u{ef0e}"
    case cropSquare = "\u{ef0d}"
    case dataUsage = "\u{ef0c}"
    case cloudUpload = "\u{ef0b}"
    case brightnessLow = "\u{ef0a}"
    case dashboard = "\u{ef09}"
    case chatBubble = "\u{ef08}"
    case cloudDownload = "\u{ef07}"
    case cameraFront = "\u{ef06}"
    case cropDin = "\u{ef05}"
    case cloudOff = "\u{ef04}"
    case callMissedOutgoing = "\u{ef03}"
    case dehaze = "\u{ef02}"
    case changeHistory = "\u{ef01}"
    case developerMode = "\u{ef00}"
    case confirmationNumber = "\u{eeff}"
    case chromeReaderMode = "\u{eefe}"
    case callMade = "\u{eefd}"
    case category = "\u{eefc}"
    case delete = "\u{eefb}"
    case clearAll = "\u{eefa}"
    case cardMembership = "\u{eef9}"
    case callMissed = "\u{eef8}"
    case bookmarkBorder = "\u{eef7}"
    case cameraEnhance = "\u{eef6}"
    case childCare = "\u{eef5}"
    case cloudDone = "\u{eef4}"
    case clear = "\u{eef3}"
    case cropLandscape = "\u{eef2}"
    case checkCircle = "\u{eef1}"
    case cameraRear = "\u{eef0}"
    case borderTop = "\u{eeef}"
    case checkBoxOutlineBlank = "\u{eeee}"
    case cropFree = "\u{eeed}"
    case colorize = "\u{eeec}"
    case cropRotate = "\u{eeeb}"
    case build = "\u{eeea}"
    case check = "\u{eee9}"
    case colorLens = "\u{eee8}"
    case chevronRight = "\u{eee7}"
    case chat = "\u{eee6}"
    case blurLinear = "\u{eee5}"
    case callMerge = "\u{eee4}"
    case calendarViewDay = "\u{eee3}"
    case cardTravel = "\u{eee2}"
    case cropOriginal = "\u{eee1}"
    case brokenImage = "\u{eee0}"
    case callToAction = "\u{eedf}"
    case callEnd = "\u{eede}"
    case close = "\u{eedd}"
    case centerFocusWeak = "\u{eedc}"
    case castConnected = "\u{eedb}"
    case compare = "\u{eeda}"
    case cloudQueue = "\u{eed9}"
    case brightness7 = "\u{eed8}"
    case borderOuter = "\u{eed7}"
    case childFriendly = "\u{eed6}"
    case checkCircleOutline = "\u{eed5}"
    case cancelPresentation = "\u{eed4}"
    case cancelScheduleSend = "\u{eed3}"
    case casino = "\u{eed2}"
    case controlPoint = "\u{eed1}"
    case cake = "\u{eed0}"
    case business = "\u{eecf}"
    case brightnessAuto = "\u{eece}"
    case burstMode = "\u{eecd}"
    case beenhere = "\u{eecc}"
    case cardGiftcard = "\u{eecb}"
    case call = "\u{eeca}"
    case cast = "\u{eec9}"
    case calendarToday = "\u{eec8}"
    case bugReport = "\u{eec7}"
    case brightness3 = "\u{eec6}"
    case brightness2 = "\u{eec5}"
    case brightness4 = "\u{eec4}"
    case callSplit = "\u{eec3}"
    case borderBottom = "\u{eec2}"
    case cameraAlt = "\u{eec1}"
    case borderRight = "\u{eec0}"
    case cameraRoll = "\u{eebf}"
    case brightness5 = "\u{eebe}"
    case blurOff = "\u{eebd}"
    case borderHorizontal = "\u{eebc}"
    case bubbleChart = "\u{eebb}"
    case brightnessMedium = "\u{eeba}"
    case bluetoothDisabled = "\u{eeb9}"
    case brightness6 = "\u{eeb8}"
    case borderLeft = "\u{eeb7}"
    case blurCircular = "\u{eeb6}"
    case cached = "\u{eeb5}"
    case borderClear = "\u{eeb4}"
    case bathtub = "\u{eeb3}"
    case bluetooth = "\u{eeb2}"
    case arrowLeft = "\u{eeb1}"
    case ballot = "\u{eeb0}"
    case brush = "\u{eeaf}"
    case businessCenter = "\u{eeae}"
    case bluetoothConnected = "\u{eead}"
    case borderInner = "\u{eeac}"
    case brightness1 = "\u{eeab}"
    case arrowBackIos = "\u{eeaa}"
    case borderStyle = "\u{eea9}"
    case book = "\u{eea8}"
    case brightnessHigh = "\u{eea7}"
    case borderVertical = "\u{eea6}"
    case bookmark = "\u{eea5}"
    case brandingWatermark = "\u{eea4}"
    case borderAll = "\u{eea3}"
    case batteryStd = "\u{eea2}"
    case assessment = "\u{eea1}"
    case attachFile = "\u{eea0}"
    case apartment = "\u{ee9f}"
    case bluetoothSearching = "\u{ee9e}"
    case barChart = "\u{ee9d}"
    case attachment = "\u{ee9c}"
    case assignmentReturn = "\u{ee9b}"
    case blurOn = "\u{ee9a}"
    case batteryFull = "\u{ee99}"
    case batteryUnknown = "\u{ee98}"
    case assistantPhoto = "\u{ee97}"
    case backup = "\u{ee96}"
    case avTimer = "\u{ee95}"
    case arrowDropDownCircle = "\u{ee94}"
    case bookmarks = "\u{ee93}"
    case block = "\u{ee92}"
    case autorenew = "\u{ee91}"
    case arrowRight = "\u{ee90}"
    case batteryChargingFull = "\u{ee8f}"
    case bluetoothAudio = "\u{ee8e}"
    case assignmentTurnedIn = "\u{ee8d}"
    case arrowDropUp = "\u{ee8c}"
    case assignment = "\u{ee8b}"
    case arrowRightAlt = "\u{ee8a}"
    case audiotrack = "\u{ee89}"
    case allInbox = "\u{ee88}"
    case assignmentInd = "\u{ee87}"
    case arrowDownward = "\u{ee86}"
    case attachMoney = "\u{ee85}"
    case artTrack = "\u{ee84}"
    case apps = "\u{ee83}"
    case arrowUpward = "\u{ee82}"
    case aspectRatio = "\u{ee81}"
    case arrowForward = "\u{ee80}"
    case airlineSeatLegroomExtra = "\u{ee7f}"
    case announcement = "\u{ee7e}"
    case alarmAdd = "\u{ee7d}"
    case airlineSeatLegroomNormal = "\u{ee7c}"
    case batteryAlert = "\u{ee7b}"
    case atm = "\u{ee7a}"
    case beachAccess = "\u{ee79}"
    case alarm = "\u{ee78}"
    case addToPhotos = "\u{ee77}"
    case addComment = "\u{ee76}"
    case alarmOff = "\u{ee75}"
    case assistant = "\u{ee74}"
    case airplanemodeActive = "\u{ee73}"
    case android = "\u{ee72}"
    case allOut = "\u{ee71}"
    case archive = "\u{ee70}"
    case assignmentLate = "\u{ee6f}"
    case alarmOn = "\u{ee6e}"
    case album = "\u{ee6d}"
    case backspace = "\u{ee6c}"
    case ampStories = "\u{ee6b}"
    case airlineSeatFlat = "\u{ee6a}"
    case arrowBack = "\u{ee69}"
    case allInclusive = "\u{ee68}"
    case accessible = "\u{ee67}"
    case add = "\u{ee66}"
    case airlineSeatLegroomReduced = "\u{ee65}"
    case arrowDropDown = "\u{ee64}"
    case assignmentReturned = "\u{ee63}"
    case arrowForwardIos = "\u{ee62}"
    case airlineSeatReclineExtra = "\u{ee61}"
    case airportShuttle = "\u{ee60}"
    case addPhotoAlternate = "\u{ee5f}"
    case accessibleForward = "\u{ee5e}"
    case addToHomeScreen = "\u{ee5d}"
    case airlineSeatReclineNormal = "\u{ee5c}"
    case addAPhoto = "\u{ee5b}"
    case airplay = "\u{ee5a}"
    case addShoppingCart = "\u{ee59}"
    case airlineSeatIndividualSuite = "\u{ee58}"
    case adb = "\u{ee57}"
    case airlineSeatFlatAngled = "\u{ee56}"
    case addBox = "\u{ee55}"
    case addAlarm = "\u{ee54}"
    case airplanemodeInactive = "\u{ee53}"
    case addCircle = "\u{ee52}"
    case adjust = "\u{ee51}"
    case addToQueue = "\u{ee50}"
    case accountCircle = "\u{ee4f}"
    case addAlert = "\u{ee4e}"
    case accessibilityNew = "\u{ee4d}"
    case addCircleOutline = "\u{ee4c}"
    case accountTree = "\u{ee4b}"
    case accountBalance = "\u{ee4a}"
    case accessibility = "\u{ee49}"
    case accountBox = "\u{ee48}"
    case accountBalanceWallet = "\u{ee47}"
    case accessAlarm = "\u{ee46}"
    case _360 = "\u{ee45}"
    case accessAlarms = "\u{ee44}"
    case _4k = "\u{ee43}"
    case accessTime = "\u{ee42}"
    case _3dRotation = "\u{ee41}"
    case acUnit = "\u{ee40}"
}
