// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BayutLocalPackages",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "MarqueeLabel", targets: ["MarqueeLabel"]),
        .library(name: "ImageSlideshow", targets: ["ImageSlideshow"]),
        .library(name: "Presentr", targets: ["Presentr"]),
        .library(name: "RangeSeekSlider", targets: ["RangeSeekSlider"]),
        .library(name: "ReadMoreTextView", targets: ["ReadMoreTextView"]),
        .library(name: "TTTAttributedLabel", targets: ["TTTAttributedLabel"]),
        .library(name: "SlideMenuControllerSwift", targets: ["SlideMenuController"]),
        .library(name: "DZNWebViewController", targets: ["DZNWebViewController"])
    ],
    targets: [
        .target(name: "MarqueeLabel", path: "MarqueeLabel/Sources"),
        .target(name: "ImageSlideshow", path: "ImageSlideshow/ImageSlideshow"),
        .target(name: "Presentr", path: "Presentr/Presentr"),
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
        .target(name: "SlideMenuController", path: "SlideMenuController/Source"),
        .target(name: "DZNWebViewController", path: "DZNWebViewController/Source")
    ]
)
