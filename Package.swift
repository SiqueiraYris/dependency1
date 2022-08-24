// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dependency1",
    products: [
        .library(
            name: "Dependency1",
            targets: ["Dependency1"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Dependency1",
            dependencies: [],
            resources: [
                .process("test")
            ]
        ),
        .testTarget(
            name: "Dependency1Tests",
            dependencies: ["Dependency1"]),
    ]
)
