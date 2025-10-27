// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BayutLocalPackages",
    platforms: [.iOS(.v13)],
    products: [
        // A dummy product to make the package valid
        .library(name: "BayutLocalPackages", targets: ["BayutLocalPackages"])
    ],
    dependencies: [
        .package(path: "./MarqueeLabel"),
        .package(path: "./ImageSlideshow"),
        .package(path: "./Presentr"),
        .package(path: "./RangeSeekSlider"),
        .package(path: "./ReadMoreTextView"),
        .package(path: "./TTTAttributedLabel"),
        .package(path: "./SlideMenuController"),
        .package(path: "./DZNWebViewController")
    ],
    targets: [
        .target(
            name: "BayutLocalPackages",
            dependencies: [
                "MarqueeLabel",
                "ImageSlideshow",
                "Presentr",
                "RangeSeekSlider",
                "ReadMoreTextView",
                "TTTAttributedLabel",
                "SlideMenuControllerSwift",
                "DZNWebViewController"
            ],
            path: "Sources/BayutLocalPackages"
        )
    ]
)

