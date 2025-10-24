// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Presentr",
    products: [
        .library(
            name: "Presentr",
            targets: ["Presentr"]
        ),
    ],
    targets: [
        .target(
            name: "Presentr",
            path: "Presentr"
        ),
        .testTarget(
            name: "PresentrTests",
            dependencies: ["Presentr"],
            path: "PresentrTests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
