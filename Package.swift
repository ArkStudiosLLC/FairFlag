// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "FairFlag",
    platforms: [
        .iOS(.v15),
        .watchOS(.v9),
        .tvOS(.v15),
        .macOS(.v12),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "FairFlag", targets: ["FairFlag"])
    ],
    targets: [
        .target(
            name: "FairFlag",
            resources: [.process("Asset.xcassets")]
        )
    ]
)
