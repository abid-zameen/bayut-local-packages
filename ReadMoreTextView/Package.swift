// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ReadMoreTextView",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ReadMoreTextView",
            targets: ["ReadMoreTextView"]
        ),
    ],
    targets: [
        .target(
            name: "ReadMoreTextView",
            path: "Sources"
        )
    ]
)
