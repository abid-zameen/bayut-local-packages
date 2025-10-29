// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BayutLocalPackages",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "MarqueeLabel", targets: ["MarqueeLabel"]),
        .library(name: "ObjectMapper", targets: ["ObjectMapper"]),
        .library(name: "ImageSlideshow", targets: ["ImageSlideshow"]),
        .library(name: "Presentr", targets: ["Presentr"]),
        .library(name: "RangeSeekSlider", targets: ["RangeSeekSlider"]),
        .library(name: "ReadMoreTextView", targets: ["ReadMoreTextView"]),
        .library(name: "TTTAttributedLabel", targets: ["TTTAttributedLabel"]),
        .library(name: "SlideMenuControllerSwift", targets: ["SlideMenuControllerSwift"]),
        .library(name: "DZNWebViewController", targets: ["DZNWebViewController"]),
        .library(
            name: "FlagPhoneNumber",
            targets: ["FlagPhoneNumber", "libPhoneNumber"]),
        .library(
            name: "InstantSearchClient",
            targets: ["InstantSearchClient"]
        )
    ],
    dependencies: [
        // External dependencies used by multiple targets
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "5.8.0"),
        .package(url: "https://github.com/Alamofire/AlamofireImage.git", from: "3.6.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0")
    ],
    targets: [
        // MARK: - Core Targets

        .target(
            name: "MarqueeLabel",
            path: "MarqueeLabel/Sources",
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ]
        ),

        // Exclude InputSources so subtargets can own those files without overlap
        .target(
            name: "ImageSlideshow",
            path: "ImageSlideshow/ImageSlideshow",
            exclude: ["Classes/InputSources"],
            resources: [
                .copy("Assets/ic_cross_white@2x.png"),
                .copy("Assets/ic_cross_white@3x.png")
            ]
        ),

        // MARK: - ImageSlideshow Extensions (Plugins)

        .target(
            name: "ImageSlideshowAlamofire",
            dependencies: ["ImageSlideshow", "AlamofireImage"],
            path: "ImageSlideshow/ImageSlideshow/Classes/InputSources",
            sources: ["AlamofireSource.swift"]
        ),
        .target(
            name: "ImageSlideshowSDWebImage",
            dependencies: ["ImageSlideshow", "SDWebImage"],
            path: "ImageSlideshow/ImageSlideshow/Classes/InputSources",
            sources: ["SDWebImageSource.swift"]
        ),
        .target(
            name: "ImageSlideshowKingfisher",
            dependencies: ["ImageSlideshow", "Kingfisher"],
            path: "ImageSlideshow/ImageSlideshow/Classes/InputSources",
            sources: ["KingfisherSource.swift"]
        ),

        // MARK: - Other UI Components

        .target(
            name: "Presentr",
            path: "Presentr/Presentr",
            resources: [
                .process("AlertViewController.xib"),
                .process("Montserrat-Regular.ttf"),
                .process("SourceSansPro-Regular.ttf")
            ]
        ),

        .target(name: "RangeSeekSlider", path: "RangeSeekSlider/Sources"),
        .target(name: "ReadMoreTextView", path: "ReadMoreTextView/Sources"),
        .target(
            name: "libPhoneNumber",
            dependencies: [],
            path: "FlagPhoneNumber/libPhoneNumber",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Internal")
            ]
        ),
        .target(
            name: "FlagPhoneNumber",
            dependencies: ["libPhoneNumber"],
            path: "FlagPhoneNumber",
            exclude: ["Info.plist", "libPhoneNumber"],
            resources: [
                .process("Resources/countryCodes.json"),
                .process("Resources/FlagKit.xcassets")
            ],
            publicHeadersPath: "."
        ),
        
        // MARK: - ObjC-based Targets

        .target(
            name: "TTTAttributedLabel",
            path: "TTTAttributedLabel/TTTAttributedLabel",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
        .target(
            name: "SlideMenuControllerSwift",
            path: "SlideMenuController/Source"
        ),
        .target(
            name: "DZNWebViewController",
            path: "DZNWebViewController/Source",
            publicHeadersPath: "."
        ),

        // MARK: - Networking & Mapping

        .target(
            name: "ObjectMapper",
            path: "ObjectMapper"
        ),
        .target(
            name: "InstantSearchClient",
            path: "InstantSearchClient"
        ),
    ]
)
