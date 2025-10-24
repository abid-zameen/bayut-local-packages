// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DZNWebViewController",
    products: [
        .library(
            name: "DZNWebViewController",
            targets: ["DZNWebViewController"]
        ),
    ],
    targets: [
        .target(
            name: "DZNWebViewController",
            dependencies: [],
            path: "Source/Classes",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
