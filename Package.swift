// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "union-notifications",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "UnionNotifications",
            targets: ["UnionNotifications"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/unionst/union-buttons", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "UnionNotifications",
            dependencies: [
                .product(name: "UnionButtons", package: "union-buttons")
            ]
        )
    ]
)
