// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TTTAttributedLabel",
    products: [
        .library(
            name: "TTTAttributedLabel",
            targets: ["TTTAttributedLabel"]
        ),
    ],
    targets: [
        .target(
            name: "TTTAttributedLabel",
            path: "TTTAttributedLabel",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
        .testTarget(
            name: "TTTAttributedLabelTests",
            dependencies: ["TTTAttributedLabel"],
            path: "Example"
        )
    ],
    swiftLanguageVersions: [.v5]
)
