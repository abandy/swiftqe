// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftqe",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        .package(url: "https://github.com/antlr/antlr4.git", from: "4.13.1"),
        .package(name: "Arrow", path: "vendor/Arrow")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "swiftqe",
            dependencies: [
                .product(name: "Antlr4", package: "antlr4"),
                .product(name: "Arrow", package: "Arrow")
            ]),
        .testTarget(
            name: "swiftqetests",
            dependencies: ["swiftqe",
                           .product(name: "Antlr4", package: "antlr4"),
                           .product(name: "Arrow", package: "Arrow")])
    ]
)
