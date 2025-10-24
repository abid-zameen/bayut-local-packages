// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SlideMenuControllerSwift",
    products: [
        .library(
            name: "SlideMenuControllerSwift",
            targets: ["SlideMenuControllerSwift"]
        ),
    ],
    targets: [
        .target(
            name: "SlideMenuControllerSwift",
            path: "Source"
        ),
        .testTarget(
            name: "SlideMenuControllerSwiftTests",
            dependencies: ["SlideMenuControllerSwift"],
            path: "SlideMenuControllerSwiftTests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
