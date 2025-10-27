// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "BayutLocalPackages",
  defaultLocalization: "en",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MarqueeLabel", targets: ["MarqueeLabel"]),
    .library(name: "AlamofireObjectMapper", targets: ["AlamofireObjectMapper"]),
    .library(name: "ObjectMapper", targets: ["ObjectMapper"]),
    .library(name: "ImageSlideshow", targets: ["ImageSlideshow"]),
    .library(name: "ImageSlideshow/Alamofire", targets: ["ImageSlideshowAlamofire"]),
    .library(name: "ImageSlideshow/SDWebImage", targets: ["ImageSlideshowSDWebImage"]),
    .library(name: "ImageSlideshow/Kingfisher", targets: ["ImageSlideshowKingfisher"]),
    .library(name: "Presentr", targets: ["Presentr"]),
    .library(name: "RangeSeekSlider", targets: ["RangeSeekSlider"]),
    .library(name: "ReadMoreTextView", targets: ["ReadMoreTextView"]),
    .library(name: "TTTAttributedLabel", targets: ["TTTAttributedLabel"]),
    .library(name: "SlideMenuControllerSwift", targets: ["SlideMenuControllerSwift"]),
    .library(name: "DZNWebViewController", targets: ["DZNWebViewController"])
  ],
  dependencies: [
    .package(url: "https://github.com/onevcat/Kingfisher.git", from: "5.8.0"),
    .package(url: "https://github.com/Alamofire/AlamofireImage.git", .upToNextMinor(from: "3.6.0")),
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0")
  ],
  targets: [
    .target(
      name: "MarqueeLabel",
      path: "MarqueeLabel/Sources",
      resources: [
        .process("PrivacyInfo.xcprivacy")
      ]
    ),
    .target(
      name: "ImageSlideshow",
      path: "ImageSlideshow/ImageSlideshow",
      sources: [
        "Classes/Core/ActivityIndicator.swift",
        "Classes/Core/Bundle+Module.swift",
        "Classes/Core/FullScreenSlideshowViewController.swift",
        "Classes/Core/ImageSlideshow.swift",
        "Classes/Core/ImageSlideshowItem.swift",
        "Classes/Core/InputSource.swift",
        "Classes/Core/PageIndicator.swift",
        "Classes/Core/PageIndicatorPosition.swift",
        "Classes/Core/SwiftSupport.swift",
        "Classes/Core/UIImage+AspectFit.swift",
        "Classes/Core/UIImageView+Tools.swift",
        "Classes/Core/ZoomAnimatedTransitioning.swift",
      ],
      resources: [
        .copy("Assets/ic_cross_white@2x.png"),
        .copy("Assets/ic_cross_white@3x.png"),
      ]
    ),
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
      name: "TTTAttributedLabel",
      path: "TTTAttributedLabel/TTTAttributedLabel",
      publicHeadersPath: ".",
      cSettings: [
        .headerSearchPath(".")
      ]
    ),
    .target(name: "SlideMenuControllerSwift", path: "SlideMenuController/Source"),
    .target(name: "DZNWebViewController", path: "DZNWebViewController/Source", publicHeadersPath: "."),
    .target(name: "AlamofireObjectMapper", path: "AlamofireObjectMapper"),
    .target(name: "ObjectMapper", path: "ObjectMapper")
  ]
)
