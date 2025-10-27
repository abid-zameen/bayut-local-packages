// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BayutLocalPackages",
    products: [],
    dependencies: [
        .package(path: "./NetworkKit"),
        .package(path: "./AnalyticsKit")
    ],
    targets: []
)
